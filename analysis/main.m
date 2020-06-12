clc;
clear all;
batch_size = 100;

%%
% m = [1:4]';
% temp = size(m,1);
% N = 5.*ones(temp,1);
% s = 0.1.*ones(temp,1);
% eta = 1e-2.*ones(temp,1);
% Para = [m N s eta];
% [P,Q,T,E] = analyse(Para,batch_size);
% [p,q,t,e] = process_data(P,Q,T,E);
% visualize(m,'m',p,q,t,e);
% save('m_5.mat');
% m = [1:9]';
% temp = size(m,1);
% N = 10.*ones(temp,1);
% s = 0.1.*ones(temp,1);
% eta = 1e-2.*ones(temp,1);
% Para = [m N s eta];
% [P,Q,T,E] = analyse(Para,batch_size);
% [p,q,t,e] = process_data(P,Q,T,E);
% visualize(m,'m',p,q,t,e);
% save('m_10.mat');
% m = [1:14]';
% temp = size(m,1);
% N = 15.*ones(temp,1);
% s = 0.1.*ones(temp,1);
% eta = 1e-2.*ones(temp,1);
% Para = [m N s eta];
% [P,Q,T,E] = analyse(Para,batch_size);
% [p,q,t,e] = process_data(P,Q,T,E);
% visualize(m,'m',p,q,t,e);
% save('m_15.mat');
%%

%%
% N = [4:10]';
% temp = size(N,1);
% m = 3.*ones(temp,1);
% s = 0.1.*ones(temp,1);
% eta = 1e-2.*ones(temp,1);
% Para = [m N s eta];
% [P,Q,T,E] = analyse(Para,batch_size);
% [p,q,t,e] = process_data(P,Q,T,E);
% visualize(N,'N',p,q,t,e);
% save('N_3.mat');
% N = [6:15]';
% temp = size(N,1);
% m = 5.*ones(temp,1);
% s = 0.1.*ones(temp,1);
% eta = 1e-2.*ones(temp,1);
% Para = [m N s eta];
% [P,Q,T,E] = analyse(Para,batch_size);
% [p,q,t,e] = process_data(P,Q,T,E);
% visualize(N,'N',p,q,t,e);
% save('N_5.mat');
% N = [9:15]';
% temp = size(N,1);
% m = 8.*ones(temp,1);
% s = 0.1.*ones(temp,1);
% eta = 1e-2.*ones(temp,1);
% Para = [m N s eta];
% [P,Q,T,E] = analyse(Para,batch_size);
% [p,q,t,e] = process_data(P,Q,T,E);
% visualize(N,'N',p,q,t,e);
% save('N_8.mat');
%%

%%
% s = [0:0.05:0.5]';
% temp = size(s,1);
% m = 7.*ones(temp,1);
% N = 10.*ones(temp,1);
% eta = 1e-2.*ones(temp,1);
% Para = [m N s eta];
% [P,Q,T,E] = analyse(Para,batch_size);
% [p,q,t,e] = process_data(P,Q,T,E);
% visualize(s,'s',p,q,t,e);
% save('s.mat');
%%

%%
eta_ = [1:-1:-10]';
eta = 10.^eta_;
temp = size(eta,1);
m = 7.*ones(temp,1);
N = 10.*ones(temp,1);
s = 0.1.*ones(temp,1);
Para = [m N s eta];
[P,Q,T,E] = analyse(Para,batch_size);
[p,q,t,e] = process_data(P,Q,T,E);
visualize(eta_,'eta',p,q,t,e);
save('eta.mat');
%%
