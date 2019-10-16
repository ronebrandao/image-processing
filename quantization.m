function quant = quantization(img, bits)

    levels = 2^bits;
    quant = zeros(size(img));

    threshForPlanes = zeros(3, levels);

    for i = 1:3
        threshForPlanes(i, :) = multithresh(img(:, :, i), levels);
    end

    for i = 1:3
        value = [0 threshForPlanes(i, 2:end) 255];
        quant(:, :, i) = imquantize(img(:, :, i), threshForPlanes(i, :), value);
    end

    quant = uint8(quant);

end
