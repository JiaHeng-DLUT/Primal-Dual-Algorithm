function [Img]=prepare_img(filename)
    RGB = imread(filename);
    figure;
    imshow(RGB);
    title('Original Image');
    Gray = rgb2gray(RGB);
    Img = im2double(Gray);
    figure;
    imshow(Img);
    title('Gray Image');
end