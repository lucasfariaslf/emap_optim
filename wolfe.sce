// wolfe line search

// x is the current iterate
// d is the descent direction
// Sim is the name of the simulator

//initial step
t=1;

m1 = 0.1; m2= 0.9; tL = 0; tR = %inf;

function t = wolfe(x, d, Sim)

    [f, g] = Sim(x);
    
    while 1 then
        [ft, gt] = Sim(x + t*d)

        if (ft <= f + m1*g'*d*t)&(d'*gt >= m2*g'*d) then
            break;
        elseif (ft <= f + m1*g'*d*t)&(d'*gt < m2*g'*d) then
            tL = t
        else
            tR = t;
        end

        if tR == %inf then
                t = 10*t;
            else
                t = (tR + tL)/2; 
        end
    end
endfunction
