// armijo line search

// x is the current iterate
// d is the descent direction
// Sim is the name of the simulator

//initial step
t=1;

m1=0.5

function t = armijo(x, d, Sim)
    
    [f0,g0]=Sim(x);
    
    while f0 + m1*g0'*d*t < Sim(x + t*d) then

            t=t/2;
    end
endfunction
