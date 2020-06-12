function [Img_dct]=dct_(Img,N)
    T = dctmtx(N);
    dct = @(block_struct) T * block_struct.data * T';
    Img_dct = blockproc(Img,[N N],dct);
    Img_dct(abs(Img_dct)<0.1)=0;
    % invdct
    % invdct = @(block_struct) T' * block_struct.data * T;
    % figure;
    % imshow(blockproc(Img_dct,[N N],invdct));
    % title("Gray Imgae after DCT and Inverse DCT");
end