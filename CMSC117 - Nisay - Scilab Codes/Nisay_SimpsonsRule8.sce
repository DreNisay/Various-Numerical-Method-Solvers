/*

Deiondre Judd V. Nisay
LONG EXAM
Function:
-Multiple Applications of Simpson's Rule 3/8 [mySR8]


*/

function [a,b,c,d]=mySR8(a,b,n)
    function y = f(x)    
        //y=0.2 + (25*x) - (200*(x^2)) + (675*(x^3)) - (900*(x^4)) + (400*(x^5));
        y=1-((%e)^(-x));
    endfunction
    if modulo(n,3)==0 then
    
        x0=a;
        xn=b;
        mySum1=0;
        mySum2=0;
        mySum3=0;
        myCount=n-2;
        myx0=x0;
    
        i=1;
        
        h=(b-a)/n;
    
        
        while i<=myCount
            myx0=myx0+h;
            myTemp = f(myx0);
            mySum1 = mySum1 + myTemp;
            i=i+3;
            myx0=myx0+h;
            myx0=myx0+h;
        end
        
        mySum1 = 3*mySum1;
        myTemp=0;
        myCount=n-1;
        myx0=x0+h;
        i=2;
        
        while i<=myCount
            myx0=myx0+h;
            myTemp = f(myx0);
            mySum2 = mySum2 + myTemp;
            i=i+3;
            myx0=myx0+h;
            myx0=myx0+h;
        end
        
        mySum2 = 3*mySum2;
        myTemp=0;
        myCount=n-3;
        myx0=x0+h;
        myx0=myx0+h;
        i=3;
        
        while i<=myCount
            myx0=myx0+h;
            myTemp = f(myx0);
            mySum3 = mySum3 + myTemp;
            i=i+3;
            myx0=myx0+h;
            myx0=myx0+h;
        end
        
        mySum3 = 2*mySum3;
        
        I = (3*(b-a))*((f(x0) + mySum1 + mySum2 + mySum3 + f(xn))/(8*n));
        
        //et = abs((1.640533-I)/1.640533)*100;
        et = abs((2.049787068367864-I)/2.049787068367864)*100;
     
        a=n;
        b=h;
        c=I;
        d=et;
    else
        a="n should be multiple of 3";
        b="N/A";
        c="N/A";
        d="N/A";
    end
endfunction

