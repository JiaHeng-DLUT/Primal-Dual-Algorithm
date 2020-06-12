function []=plot_t(x,x_label,t,t_label)
    figure;
    plot(x,t,'-*g');
    xlabel(x_label);
    ylabel(t_label);
    grid on;
end