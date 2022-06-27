/*

Deiondre Judd V. Nisay
LONG EXAM
Function:
-Multiple Applications of Simpson's Rule 3/8 with Stopping Criteria[mySR8S]


*/

function [a,b,c,d,e]=mySR8S(a,b,n,es)
    function y = f(x)    
        //y=0.2 + (25*x) - (200*(x^2)) + (675*(x^3)) - (900*(x^4)) + (400*(x^5));
        //y=1-((%e)^(-x));
        //y=sqrt(((4*(x^2))-36)/(-9));
        y=sqrt(1+((4*(x^2))/(81*(1-((x^2)/9)))));
    endfunction
    if modulo(n,3)==0 then
        et=100;
        myStop=1;
        while es<et
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
            //et = abs((2.049787068367864-I)/2.049787068367864)*100;
           // et = abs((9.42477796076938-I)/9.42477796076938)*100;
           //et = abs(9.42477796076938-I);
           et = abs(7.829423027781361-I);
            
            myA(myStop)=myStop;
            myB(myStop)=n;
            myC(myStop)=h;
            myD(myStop)=I;
            myE(myStop)=et;
            
            myStop=myStop+1;
            n=n+3;
     end
        a=myA;
        b=myB;
        c=myC;
        d=myD;
        e=myE;
    else
        a="n should be multiple of 3";
        b="N/A";
        c="N/A";
        d="N/A";
        e="N/A";
    end
endfunction

