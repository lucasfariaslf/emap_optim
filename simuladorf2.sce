//

function[fun, grad]=simuladorf2(x)
    fun = (1-x(1))^2+100*(x(2)-x(1)^2)^2;
    grad = [-2*(1-x(1))-400*(x(2)-x(1)^2)*x(1); 200*(x(2)-x(1)^2)];
//    hes = [2 0;0 2]
endfunction
