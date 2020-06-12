function [P,Q,T,E]=analyse(Para,batch_size)
    a = size(Para,1);
    [P,Q,T,E] = deal(zeros(a,batch_size));
    for i=1:a
        para = Para(i,:);
        m = para(1);
        N = para(2);
        s = para(3);
        eta = para(4);
        for j=1:batch_size
            clc;
            fprintf("i: %d/%d\n", i, a);
            fprintf("j: %d/%d\n", j, batch_size);
            [A,B,X,Y] = generate_input(m,N,s);
            [X_,P(i,j),Q(i,j),T(i,j)] = reconstruct_matrix(A,B,Y,eta);
            E(i,j) = calculate_error(X,X_);
        end
    end
end