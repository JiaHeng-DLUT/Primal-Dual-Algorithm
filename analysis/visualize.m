function []=visualize(x,x_label,p,q,t,e)
    close all;
    plot_p(x,x_label,p,'p');
    saveas(gcf,[x_label,'_p'],'png');
    plot_q(x,x_label,q,"q");
    saveas(gcf,[x_label,'_q'],'png');
    plot_t(x,x_label,t,'t(s)');
    saveas(gcf,[x_label,'_t'],'png');
    plot_e(x,x_label,e,'e');
    saveas(gcf,[x_label,'_e'],'png');
end