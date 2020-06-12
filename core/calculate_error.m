function [error]=calculate_error(X, X_)
    error = norm(X-X_, 2);
end