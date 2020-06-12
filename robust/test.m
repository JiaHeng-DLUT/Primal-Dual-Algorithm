clc;
clear all;
batch_size = 100;
m = 7;
N = 10;
s = 0.1;
eta = 1e-2;
Z = [1:10]';
a=size(Z,1);
[P,Q,T,E] = deal(zeros(a,batch_size));
for i=1:a
    for j=1:batch_size
        clc;
        fprintf("i: %d/%d\n", i, a);
        fprintf("j: %d/%d\n", j, batch_size);
        [A,B,X,Y] = generate_input(m,N,s);
        Y = Y+Z(i).*randn(m,m);
        [X_,P(i,j),Q(i,j),T(i,j)] = reconstruct_matrix(A,B,Y,eta);
        E(i,j) = calculate_error(X,X_);
    end            
end
[p,q,t,e] = process_data(P,Q,T,E);
visualize(Z,'Z',p,q,t,e);
save('Z.mat');
