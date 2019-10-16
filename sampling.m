function out = sampling(img, factor)

    factor = 1 / factor;

    row = size(img, 1) * factor;
    column = size(img, 2) * factor;

    out = zeros(row, column);

    for i = 1:row

        for j = 1:column

            for k = 1:3
                out(i, j, k) = img(i / factor, j / factor, k);
            end

        end

    end

    out = uint8(out);

end
