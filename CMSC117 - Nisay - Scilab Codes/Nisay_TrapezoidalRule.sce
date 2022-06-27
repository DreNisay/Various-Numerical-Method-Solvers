/*

Deiondre Judd V. Nisay
LONG EXAM
Function:
-Multiple Applications of Trapezoidal Rule [myTR]


*/

function [a,b,c,d]=myTR(a,b,n)
    function y = f(x)    
        //y=0.2 + (25*x) - (200*(x^2)) + (675*(x^3)) - (900*(x^4)) + (400*(x^5));
        //y=1-((%e)^(-x));
        //y=(x^2)*((%e)^x);
        y=sqrt(1+((-(4*x)/(3*sqrt(36-(4*(x^2)))))^2));
    endfunction
    x0=a;
    xn=b;
    mySum=0;
    myCount=n-1;
    myx0=x0;
    
    h=(b-a)/n;
    
    for i=1:myCount
        myx0=myx0+h;
        myTemp = f(myx0);
        mySum = mySum + myTemp;
    end
    
    mySum = 2*mySum;
    
    I = (h/2)*(f(x0) + mySum + f(xn));
    
    //et = abs((1.640533-I)/1.640533)*100;
    //et = abs((2.049787068367864-I)/2.049787068367864)*100;
    //et = abs((98.4276846159383-I)/98.4276846159383)*100;
    et = abs((7.932719794645637-I)/7.932719794645637)*100;
    
    
    a=n;
    b=h;
    c=I;
    d=et;
    
endfunction

