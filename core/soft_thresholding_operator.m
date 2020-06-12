function [y]=soft_thresholding_operator(y, tau)
    for i = 1:size(y, 1)
        if y(i) >= tau
            y(i) = y(i) - tau;
        elseif y(i) <= -tau
            y(i) = y(i) + tau;
        else
            y(i) = 0;
        end
    end
end