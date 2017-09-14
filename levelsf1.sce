
t=linspace(-10,10,50);
function z=my_surface1(x, y),z=x^2+2*y^2,endfunction
contour(t,t,my_surface1,10)
