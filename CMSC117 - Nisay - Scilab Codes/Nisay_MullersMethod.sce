/*

Deiondre Judd V. Nisay
LONG EXAM
Function:
-Muller's Method[myMM]


*/

function [a,b]=myMM(xr,h,eps,maxit)
    function y = f(x)    
        //y=(x^3)-(13*x)-12;
        //y=(x^3)+(x^2)-(4*x)-4;
        y=(x^3)-(0.5*(x^2))+(4*x)-2;
    endfunction
    
    if xr~=0 then
        x2=xr;
        x1=xr+(h*xr);
        x0=xr-(h*xr);
        iter=0;
        j=1;
        
        iter=iter+1;
        h0=x1-x0;
        h1=x2-x1;
        d0=(f(x1)-f(x0))/h0;
        d1=(f(x2)-f(x1))/h1;
        mya=(d1-d0)/(h1+h0);
        myb=(mya*h1)+d1;
        myc=f(x2);
        rad=sqrt((myb^2)-(4*mya*myc));
        
        if abs(myb+rad)>abs(myb-rad) then
            den=myb+rad;
        else
            den=myb-rad;
        end
        
        dxr=((-2)*myc)/den;
        xr=x2+dxr;
        x0=x1;
        x1=x2;
        x2=xr;
        
        myA(j)=iter;
        myB(j)=xr;
        j=j+1;
        
        while abs(dxr)>(eps*xr) & iter<maxit;
            iter=iter+1;
            h0=x1-x0;
            h1=x2-x1;
            d0=(f(x1)-f(x0))/h0;
            d1=(f(x2)-f(x1))/h1;
            mya=(d1-d0)/(h1+h0);
            myb=(mya*h1)+d1;
            myc=f(x2);
            rad=sqrt((myb^2)-(4*mya*myc));
            
            if abs(myb+rad)>abs(myb-rad) then
                den=myb+rad;
            else
                den=myb-rad;
            end
            
            dxr=((-2)*myc)/den;
            xr=x2+dxr;
            x0=x1;
            x1=x2;
            x2=xr;
            myA(j)=iter;
            myB(j)=xr;
            j=j+1;
        end
        
        
        
        
        a=myA;
        b=myB;
    else
        a="Please choose any non-zero value";
    end
    
        
    
endfunction

