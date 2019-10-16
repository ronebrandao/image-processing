function hist = (image)

    hist = zeros(1, 256);

    for i = 1:size(image, 1)

        for j = 1:size(ha, 2)
            hist(image(i, j) + 1) = hist(image(i, j) + 1) + 1;
        end

    end

end
