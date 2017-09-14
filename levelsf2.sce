
t=linspace(-10,10,50);

function z=my_surface2(x, y)
    
    z=(1-x)^2+100*(y-x^2)^2;
    
endfunction

contour(t,t,my_surface2,[1;2;5;10;20;30;50;100;200])
