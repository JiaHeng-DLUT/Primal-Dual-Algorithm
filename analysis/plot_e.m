function []=plot_e(x,x_label,e,e_label)
    figure;
    plot(x,e,'-*b');
    xlabel(x_label);
    ylabel(e_label);
    grid on;
end