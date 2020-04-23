img_in = imread('prueba.jpg');
img_uint = im2uint8(img_in(:,:,1));
img_enc = lzw_cod(img_uint);
% tasa = numel(img_enc)/numel(img_uint);
img_dec = vec2mat(LZW_img_dec(img_enc),numel(img_uint(1,:)));
imshow(img_dec);
