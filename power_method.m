function [x,r] = power_method(A,x0,niter)
x = x0;
for k = 1:niter
    y = A*x;
    r = sum(y)/sum(x);
    x = y/norm(y,inf);
    hold on
    plot(k,r,'r*')
    pause(0.1)
    
end
hold off