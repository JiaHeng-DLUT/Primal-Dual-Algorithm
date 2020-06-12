function [A,B,X,Y] = generate_input(m,N,s)
    rng('shuffle');
    A = rand(m,N);
    B = rand(m,N);
    num_non_zero_elements = round(s*N*N);
    index_x = randperm(N*N, num_non_zero_elements);
    x = zeros(N*N, 1);
    x(index_x) = rand(num_non_zero_elements, 1);
    X = reshape(x, N, N);
    Y = A*X*B';
end