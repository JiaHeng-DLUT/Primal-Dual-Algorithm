function [ssimval]=compare_img(A,ref)
    [ssimval,ssimmap] = ssim(A,ref);
    figure;
    imshow(ssimmap,[]);
    title(['SSIM Map with SSIM Value: ',num2str(ssimval)]);
end