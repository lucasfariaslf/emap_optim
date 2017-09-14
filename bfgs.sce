//implementation of the bfgs method

//clear all; clc;

eps=10^(-3);
N=10000;  

nit=1;
d=1;
function bfgs(x, Sim, ln) 
    
    [f,g] = Sim(x);
    W = eye(length(x),length(x));
  
    while nit<N & d>eps
        
        p = -W*g;
        
        if type(ln)==13 then
            t=ln(x, p, Sim);
        elseif type(ln)==1 then
            t=ln
        end
        
        xnew = x + t*p;
//        disp(xnew)
        [fnew,gnew] = Sim(xnew);
//        disp(fnew)
        
        y = gnew - g;
        s = xnew - x;        
        W = W - (s*y'*W + W*y*s')/(y'*s) + (1 + (y'*W*y)/(y'*s))*(s*s')/(y'*s);
//        disp(W)
        x = xnew;
        [f,g] = Sim(xnew);
                
        d=norm(g,"inf");
        nit=nit+1;
        
        mprintf('Iteration: %i, Value of f: %f, Gradient norm: %f \n',nit,f,d)    
    end
endfunction 
