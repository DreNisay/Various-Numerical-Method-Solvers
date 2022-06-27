/*

Deiondre Judd V. Nisay
LONG EXAM
Function:
-Multiple Applications of Simpson's Rule 1/3 [mySR3]


*/

function [a,b,c,d]=mySR3(a,b,n)
    function y = f(x)    
        //y=0.2 + (25*x) - (200*(x^2)) + (675*(x^3)) - (900*(x^4)) + (400*(x^5));
        //y=1-((%e)^(-x));
        //y=(x^2)*((%e)^x);
        //y=sqrt(((4*(x^2))-36)/(-9));
        //y=sqrt(1+((-(4*x)/(3*sqrt(36-(4*(x^2)))))^2));
        //y=sqrt(1+((4*(x^2))/(81*(1-((x^2)/9)))));
        y=-(10)/(x^(3/2));
    endfunction
    if modulo(n,2)==0 then
        x0=a;
        xn=b;
        mySumOdd=0;
        mySumEven=0;
        myCount=n-1;
        myx0=x0;
    
        i=1;
        
        h=(b-a)/n;
    
        
        while i<=myCount
            myx0=myx0+h;
            myTemp = f(myx0);
            mySumOdd = mySumOdd + myTemp;
            i=i+2;
            myx0=myx0+h;
        end
        
        mySumOdd = 4*mySumOdd;
        myTemp=0;
        myCount=n-2;
        myx0=x0+h;
        i=2;
        
        while i<=myCount
            myx0=myx0+h;
            myTemp = f(myx0);
            mySumEven = mySumEven + myTemp;
            i=i+2;
            myx0=myx0+h;
        end
        
        mySumEven = 2*mySumEven;
        
        I = (b-a)*((f(x0) + mySumOdd + mySumEven + f(xn))/(3*n));
        
        //et = abs((1.640533-I)/1.640533)*100;
        //et = abs((2.049787068367864-I)/2.049787068367864)*100;
        //et = abs((98.4276846159383-I)/98.4276846159383)*100;
        //et = abs((9.42477796076938-I)/9.42477796076938)*100;
        //et = abs((7.932719794645637-I)/7.932719794645637)*100;
        //et = abs(7.922391821842217-I);
        //et = abs(7.829423027781361-I);
        et = abs((2.61971659-I)/2.61971659)*100;
        
        a=n;
        b=h;
        c=I;
        d=et;
    else
        a="n should be even";
        b="N/A";
        c="N/A";
        d="N/A";
    end
endfunction

