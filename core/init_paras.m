function [theta,tau,sigma]=init_paras(A)
    rng('shuffle');
    % theta = rand; % 0 <= theta <= 1
    theta = 1;
    s = svd(A);
    while 1
        tau = rand; % tau > 0
        sigma = rand; % sigma > 0
        if (tau * sigma * s(1) * s(1)) < 1
            return;
        end
    end
end