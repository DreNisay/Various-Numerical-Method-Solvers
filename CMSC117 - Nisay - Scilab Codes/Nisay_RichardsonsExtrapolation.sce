/*

Deiondre Judd V. Nisay
LONG EXAM
Function:
-Richardson's Extrapolation [myRE]


*/

function [a,b,c,d]=myRE(x,h1)
    function y = f(x)    
        //y=0.2 + (25*x) - (200*(x^2)) + (675*(x^3)) - (900*(x^4)) + (400*(x^5));
        //y=1-((%e)^(-x));
        //y=(x^2)*((%e)^x);
        y=(-0.1*(x^4))-(0.15*(x^3))-(0.5*(x^2))-(0.25*x)+1.2;
    endfunction
    
    h2=h1/2;
    
    xp1=x+h1;
    xm1=x-h1;
    
    D1=(f(xp1)-f(xm1))/(2*h1);
    
    xp2=x+h2;
    xm2=x-h2;
    
    D2=(f(xp2)-f(xm2))/(2*h2);
    
    D=((4/3)*D2)-((1/3)*D1);
    
    et = abs((-0.9125-D)/-0.9125)*100;
    
    a=D1;
    b=D2;
    c=D;
    d=et;
    
endfunction

