// implementstion of the gradient descent method

//

//clear all; clc;

eps=10^(-3);
N=10000;

nit=1;
d=10;

function grad(x, Sim, ln)
    
    while d>eps & nit<N
                
        [f,g]=Sim(x);
        if type(ln)==13 then
            t=ln(x,-g, Sim);
        elseif type(ln)==1 then
            t=ln
        end
        
        x=x-t*g;
        
        d=norm(g);
        nit=nit+1;
        
        mprintf('Iteration: %i, Value of f: %f, Gradient norm: %f \n',nit,f,d)    
    end

endfunction
