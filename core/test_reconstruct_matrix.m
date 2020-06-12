clc;
clear all;
m = 5;
N = 10;
A = rand(m, N);
B = rand(m, N);
num_non_zero_elements = round(0.1*N*N);
index_x = randperm(N*N, num_non_zero_elements);
x = zeros(N*N, 1);
x(index_x) = rand(num_non_zero_elements, 1);
X = reshape(x, N, N);
Y = A*X*B';
eta = 1e-8;
[X_,isSuccessful,NumOfIters,time]=reconstruct_matrix(A, B, Y, eta)
norm(X,2)
norm(X_,2)
norm(X-X_,2)
plot(x);
hold on;
x_ = reshape(X_,N*N,1);
plot(x_);
legend("X","X*");
hold off;
