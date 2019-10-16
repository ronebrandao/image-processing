function image = (image)

    imgDouble = im2double(image);
    corrected = imgDouble.^5;
    image = uint8(corrected .* 255);

end
