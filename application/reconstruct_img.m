function [reconstructed_img]=reconstruct_img(compressed_img,A,B,eta)
    % reconstruct
    reconstruct_img = @(block_struct) reconstruct_img_block(A,B,block_struct.data,eta);
    m = size(A,1);
    reconstructed_img = blockproc(compressed_img,[m m],reconstruct_img);
end