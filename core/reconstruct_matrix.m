% min norm(X,1) s.t. norm(Y-AXB^T,2)<=eta
function [X_,isSuccessful,numOfIters,time]=reconstruct_matrix(A,B,Y,eta)
    tic;
    [m,N] = size(A); %(m,N)
    A = kron(B, A);
    % fprintf("size(A)");
    % size(A) %(m^2,N^2)
    y = Y(:);
    % fprintf("size(y)");
    % size(y) %(m^2,1)
    [x_,isSuccessful,numOfIters]=reconstruct_vector(A,y,eta);
    X_ = reshape(x_,N,N);
    time = toc;
end
