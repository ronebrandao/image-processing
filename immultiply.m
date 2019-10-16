function image = multiply(image, value)

    for i = 1:size(image, 1)

        for j = 1:size(image, 2)
            image(i, j, :) = image(i, j, 1) * value;
        end

    end

end
