clc;
clear all;
m = 25;
N = 100;
A = rand(m, N);
num_non_zero_elements = round(0.1*N);
index_x = randperm(N, num_non_zero_elements);
xx = zeros(N, 1);
xx(index_x) = rand(num_non_zero_elements, 1);
xx = 128.*xx;
y = A*xx;
eta = 1e-10;
[x_,isSuccessful,NumOfIters]=reconstruct_vector(A, y, eta)
norm(xx,2)
norm(x_,2)
norm(xx-x_,2)
plot(xx);
hold on;
plot(x_);
legend("x","x*");
