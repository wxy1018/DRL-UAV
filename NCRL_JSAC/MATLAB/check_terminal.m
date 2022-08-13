function is_terminal = check_terminal(T,vmax,E,x0,y0,xf,yf,xi,yi,h,lambda,u,n)

is_terminal = 1;

for i = 1:n
    [~,~,~,~,aoi]  = AoIminimizer_multiIoT(T,vmax,E,x0,y0,xf,yf,xi,yi,h,lambda,[u,i]);
    if isnan(aoi) | (aoi == Inf)
        continue;
    else
        is_terminal = 0;
        break;
    end
end