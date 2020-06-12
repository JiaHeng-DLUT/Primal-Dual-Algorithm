function []=plot_p(x,x_label,p,p_label)
    figure;
    plot(x,p,'-*r');
    ylim([0 100]);
    set(gca,'YTick',0:10:100);
    xlabel(x_label);
    ylabel(p_label);
    grid on;
end