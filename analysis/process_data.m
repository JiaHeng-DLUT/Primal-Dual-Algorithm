function [p,q,t,e]=process_data(P,Q,T,E)
    Q = Q.*P;
    T = T.*P;
    E = E.*P;
	P = [P sum(P,2)];
	Q = [Q sum(Q,2)];
	T = [T sum(T,2)];
	E = [E sum(E,2)];
    q = Q(:,end)./P(:,end);
    t = T(:,end)./P(:,end);
    e = E(:,end)./P(:,end);
    p = P(:,end)./(size(P,2)-1)*100;
end
