% min norm(x,1) s.t. norm(y-A*x,2)<=eta
function [x,isSuccessful,numOfIters]=reconstruct_vector(A,y,eta)
    [m, N] = size(A); %(m^2,N^2)
    [theta,tau,sigma]=init_paras(A);
    fprintf("theta = %f\n", theta);
    fprintf("tau = %f\n", tau);
    fprintf("sigma = %f\n", sigma);
    % Initialization
    x = rand(N, 1);
    xi = rand(m, 1);
    x_ = x;
    % Iteration
    numOfIters = 0;
    while norm(y-A*x,2)>eta
        numOfIters = numOfIters + 1;
        nx = x;
        nxi = xi;
        nx_ = x_;
        temp = A*nx_-y;
        if norm(1/sigma.*nxi+temp, 2) <= eta
            xi = zeros(m, 1);
        else
            xi = (1-eta*sigma/norm(nxi+sigma.*temp,2)).*(nxi+sigma.*temp);
        end
        x = soft_thresholding_operator(nx-tau.*A'*xi, tau);
        x_ = x + theta*(x-nx);
        if mod(numOfIters,10000) == 0
            fprintf("%d: %f.\n", numOfIters, norm(y-A*x,2));
        end
        if numOfIters > 5e5
            isSuccessful = 0;
            return;
        end
    end
    isSuccessful = 1;
end