function [compressed_img,A,B]=compress_img(Img_dct,m,N)
    A = rand(m,N);
    B = rand(m,N);
    compress = @(block_struct) A * block_struct.data * B';
    compressed_img = blockproc(Img_dct,[N N],compress);
    fprintf("Proportion of non-zero elements: %f%%.\n",sum(sum(compressed_img~=0))/N/N);
end