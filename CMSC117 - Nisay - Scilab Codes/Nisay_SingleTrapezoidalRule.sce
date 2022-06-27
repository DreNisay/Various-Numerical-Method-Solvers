/*

Deiondre Judd V. Nisay
LONG EXAM
Function:
-Single Applications of Trapezoidal Rule [mySTR]


*/

function [a]=mySTR(a,b)
    function y = f(x)    
        //y=0.2 + (25*x) - (200*(x^2)) + (675*(x^3)) - (900*(x^4)) + (400*(x^5));
        y=1-((%e)^(-x));
    endfunction
    
    I = (b-a)*((f(a) +  f(b))/2);
    
    //et = abs((1.640533-I)/1.640533)*100;
 
    a=I;
    
endfunction

