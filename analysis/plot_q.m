function []=plot_q(x,x_label,q,q_label)
    figure;
    plot(x,q,'-*m');
    xlabel(x_label);
    ylabel(q_label);
    grid on;
end