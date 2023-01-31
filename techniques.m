classdef techniques
    methods
    function res = GaussElimination(obj,n,tol,a,b)
        % a: Coefficients
        % b: Constants
        % n: Number of equations
        % x: To store the solution
        % tol : Tolerance smallest possible scaled pivot allowed
        % er : Pass back -1 if matrix is singular
        % s[n]: As an n element array for storing scaling factors
        % s(i) = the largest coef. of row i
        dett = det(a);
        if (dett == 0)
            %print('unsolvable because |a| = 0')
            res = -1;
            return;
        else     
            %scaling - store largest value in each row
            for i = 1:1:n
                s(i) = abs(a(i,1));
                for j = 2:1:n
                    if ( abs(a(i,j)) > s(i))
                        s(i) = abs(a(i,j));
                    end
                end
            end
            
            for k = 1:1:n-1
                % Partial Pivoting
                % Assume row k is the pivot row
                p = k ;
                % Find the largest scaled coefficient in column k
                big = abs(a(k,k)/s(k));
                for i = k+1:1:n 
                    dummy = abs(a(i,k)) /s(i);
                    if (dummy > big)
                        big = dummy;
                        % Record new pivoting row
                        p = i;
                    end
                end
                % Next: Swap row p and row k if p != k
                if (p ~= k)
                    % Swap row p and row k
                    for j = k:1:n
                        dummy = a(p,j);
                        a(p,j) = a(k,j);
                        a(k,j) = dummy;
                    end
                    % swap b(p) and b(k)
                    dummy = b(p);
                    b(p) = b(k);
                    b(k) = dummy;
                    % swap s(p) and s(k)
                    dummy = s(p);
                    s(p) = b(k);
                    s(k) = dummy;
                end
                % Check for singularity
                if (abs(a(k,k)/s(k)) < tol )
                    res = -1;
                    return;
                end
                % Forward elimination
                for i = k+1:1:n
                    factor = a(i,k) / a(k,k);
                    for j = k+1:1:n
                        a(i,j) = a(i,j)-( factor * a(k,j));
                    end
                    b(i) = b(i) -( factor * b(k));
                end
                % Check for singularity
                if ( abs(a(n,n)/s(n)) < tol ) 
                    res = -1;
                    return;
                end
            end
            x=0;
            x(n) = b(n) / a(n,n);
            for i = n-1:-1:1 
                sum = 0;
                for j = i+1:1:n
                    sum = sum + a(i,j)* x(j);
                end
                x(i) = (b(i) - sum) / a(i,i);
            end
        end
        %res = wrev(x);
        res = x;
    end
    function res = LUDecomp(obj,n,tol,a, b)
        % a: Coefficients, On completion: it contains the coefficients of both L and U.
        % b: Constants
        % n: Number of equations
        % x: To store the solution
        % tol : Tolerance smallest possible scaled pivot allowed
        % er : Pass back -1 if matrix is singular 
        %s[n]: As an n element array for storing scaling factors
        %o[n]  Use as indexes to pivot rows.
        %o(i) stores row number of the ith pivot row.
        %Decompose
        for i=1:1:n % Find scaling factors
            o(i) = i;
            s(i) = abs(a(i,1));
            for j = 2:1: n
                if (abs(a(i,j)) > s(i))
                    s(i) = abs(a(i,j));
                end
            end
        end
        for k = 1:1:n-1 
            % Pivot Locate the kth pivot row
            % Find the largest scaled coefficient in column k
            p = k ;% p is the index to the pivot row
            big = abs(a(o(k),k)) / s(o(k));
            for i = k+1:1:n 
                dummy = abs(a(o(i),k) / s(o(i)));
                if (dummy > big)
                    big = dummy;
                    p = i;
                end
            end
            % Swap row k with the pivot row by swapping the indexes. The actual rows remain unchanged
            dummy = o(p);
            o(p) = o(k);
            o(k) = dummy;
            % Check for singular or near-singular cases
            if (abs(a(o(k),k) / s(o(k))) < tol) 
                res = -1;
                return;
            end
            for i = k+1:1:n
                factor = a(o(i),k) / a(o(k),k);
                % Instead of storing the factors in another matrix (2D array) L,
                % We reuse the space in A to store the coefficients of L.
                a(o(i),k) = factor;
                % Eliminate the coefficients at column j in the subsequent rows
                for j = k+1:1:n
                    a(o(i),j) = a(o(i),j) - (factor *a(o(k),j));
                end
            end
        end
        % Check for singular or near-singular cases
        if ( abs(a(o(n),n) / s(o(n))) < tol)
            res = -1;
            return;
        end
        %Substitute 
        %Declare y(n)
        y(o(1)) = b(o(1));
        for i = 2:1:n 
            sum = b(o(i));
            for j = 1:1:i-1
                sum = sum - ( a(o(i),j) * y(o(j)) );
            end
            y(o(i)) = sum;
        end
        x=0;
        x(n) = y(o(n)) / a(o(n),n);
        for i = n-1:-1: 1 
            sum = 0;
            for j = i+1:1:n
                sum = sum + ( a(o(i),j) * x(j) );
            end
            x(i) = (y(o(i)) - sum) / a(o(i),i);
        end
        %res = wrev(x);
        res = x;
    end
    function res = GaussSeidel(obj,n,tol,a,b,maxiter,init)
        % Check if the matrix a is diagonally dominant
        for i = 1:1:n
            value = abs(a(i,i));
            for j = 1:1:n
                if(j==i)
                    continue;
                end
                value = value - abs(a(i,j));
            end
            if value < 0
                fprintf('The matrix is not diagonally dominant at row %2i\n',i)
            end
        end
        format long
        iteration = 1; 
        x=str2num(init).';
        err = x.*0;
        while (iteration <= maxiter)
            iteration = iteration + 1;
            x = [x ; x(end,:)];
            for i = 1:1:n
                x(iteration,i) = b(i) / a(i,i);
                for j=1:1:n
                    if(j==i)
                        continue;
                    end
                    x(iteration,i) = x(iteration,i) - ((a(i,j)*x(iteration,j))/ a(i,i));
                end
            end
            errPerIter=[];
            for j=1:1:n
                temp = abs((x(iteration,j) - x(iteration-1,j)) / x(iteration,j));
                errPerIter = [errPerIter temp];
            end
            err = [err ; errPerIter];
            if (err(iteration,:) <= tol)
                break;
            end
        end
        res = [x err];
  
    end
    
    
    end
end