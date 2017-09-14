//

function[fun, grad]= simuladorf1(x)
    k=1:length(x);
    fun = (k'.*x)'*x;
    grad = (2*k)'.*x;
//    hes = diag(2*k)
endfunction
