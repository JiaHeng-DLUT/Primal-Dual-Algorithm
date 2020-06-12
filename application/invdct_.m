function [reconstructed_img]=invdct_(reconstructed_img,N)
    T = dctmtx(N);
    invdct = @(block_struct) T' * block_struct.data * T;
    reconstructed_img = blockproc(reconstructed_img,[N N],invdct);
    figure;
    imshow(reconstructed_img);
    title("Reconstructed Image");
end