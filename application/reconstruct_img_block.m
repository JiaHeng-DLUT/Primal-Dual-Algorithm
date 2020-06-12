% function [X_]=reconstruct_img_block(A,B,Y,eta)
%     N = size(A, 2);
%     cnt = 0;
%     X_ = zeros(N,N);
%     for i=1:10
%         [X,isSuccessful]=reconstruct_matrix(A,B,Y,eta);
%         if isSuccessful
%             cnt = cnt + 1;
%             X_ = X_ + X;
%         end
%     end
%     X_ = X_./cnt;
% end
function [X]=reconstruct_img_block(A,B,Y,eta)
    while 1
        [X,isSuccessful]=reconstruct_matrix(A,B,Y,eta);
        if isSuccessful
            clc;
            return;
        end
    end
end