/*

Deiondre Judd V. Nisay
Week 4 Codes for 1st Long Exam
Function:
-Secant Method [mySM]
-Modified Newton-Raphson Method [myMNRM]
-Modified Secant Method [myMSM]
-Brent's Method [myBrent]


*/

function [a,b,c,d,e,g]=mySM(x0,es,imax)
    function y = f(c)
        //y = ((%e)^(-c))-c;
        //y=300-(((0.25*32.17)/0.1)*c)+((((0.25^2)*32.17)/(0.1^2))*(1-((%e)^((-(0.1*c))/0.25))));
        //y=(600*(c^4))-(550*(c^3))+(200*(c^2))-(20*(c))-1;
        y=(c^3)+(2*(c^2))+(10*c)-20;
    endfunction
    
    xr=x0;
    iter=0;
    i=1;
    xroldold=0;
    
    xrold=xr;
    xr=xrold-((f(xrold)*(xroldold-xrold))/(f(xroldold)-f(xrold)));
    iter=iter+1;
    myA(i)=iter;
    if xr~=0 then
        ea=abs((xr-xrold)/xr)*100;
        //et=abs((0.56714329-xr)/0.56714329)*100;
        //et=abs((-0.91934054-xr)/-0.91934054)*100;
        et=abs((1.368808108-xr)/1.368808108)*100;
    end
    myB(i)=xr;
    myE(i)=xrold;
    myG(i)=xroldold;
    myD(i)=et;
    
    while ea>es & iter<imax;
        
        i=i+1;
        xroldold=xrold;
        xrold=xr;
        xr=xrold-((f(xrold)*(xroldold-xrold))/(f(xroldold)-f(xrold)));
        iter=iter+1;
        myA(i)=iter;
        if xr~=0 then
            ea=abs((xr-xrold)/xr)*100;
            et=abs((1.368808108-xr)/1.368808108)*100;
        end
        myB(i)=xr;
        myE(i)=xrold;
        myG(i)=xroldold;
        myC(i)=ea;
        myD(i)=et;
    end
    a=myA;
    b=myB;
    c=myC;
    d=myD;
    e=myE;
    g=myG;
    
endfunction

function [a,b,c,d,e]=myMNRM(x0,es,imax)
    function y = f(x)
        //y = ((%e)^(-x))-x;
        y=(x^3)-(2*(x^2))-(4*x)+8;
    endfunction
    function dy = h(x)
        //dy = (-(%e)^(-x))-1;
        dy=(3*(x^2))-(4*(x))-(4);
    endfunction
    function ddy = g(x)
        //ddy = (%e)^(-x);
        ddy=(6*(x))-(4);
    endfunction
    
    xr=x0;
    iter=0;
    i=1;
    
    xrold=xr;
    xr=xrold-((f(xrold)*h(xrold))/(((h(xrold))^(2))-(f(xrold)*g(xrold))));
    iter=iter+1;
    myA(i)=iter;
    if xr~=0 then
        ea=abs((xr-xrold)/xr)*100;
        //et=abs((0.56714329-xr)/0.56714329)*100;
        //et=abs((-0.91934054-xr)/-0.91934054)*100;
        et=abs((2-xr)/2)*100;
    end
    myB(i)=xr;
    myE(i)=xrold;
    myD(i)=et;
    
    while ea>es & iter<imax;
        
        i=i+1;
        xrold=xr;
        xr=xrold-((f(xrold)*h(xrold))/(((h(xrold))^(2))-(f(xrold)*g(xrold))));
        iter=iter+1;
        myA(i)=iter;
        if xr~=0 then
            ea=abs((xr-xrold)/xr)*100;
            et=abs((2-xr)/2)*100;
        end
        myB(i)=xr;
        myE(i)=xrold;
 
        myC(i)=ea;
        myD(i)=et;
    end
    a=myA;
    b=myB;
    c=myC;
    d=myD;
    e=myE;

    
endfunction

function [a,b,c,d,e,g]=myMSM(x0,es,imax)
    function y = f(x)
        y = ((%e)^(-x))-x;
        //y=(x^3)-(2*(x^2))-(4*x)+8;
    endfunction
    function dy = h(x)
        dy = (-(%e)^(-x))-1;
        //dy=(3*(x^2))-(4*(x))-(4);
    endfunction
    
    xr=x0;
    iter=0;
    i=1;
    xroldold=0;
    
    xrold=xr;
    xr=xrold-(((f(xrold)/h(xrold))*(xroldold-xrold))/((f(xroldold)/h(xroldold))-(f(xrold)/h(xrold))));
    iter=iter+1;
    myA(i)=iter;
    if xr~=0 then
        ea=abs((xr-xrold)/xr)*100;
        //et=abs((0.56714329-xr)/0.56714329)*100;
        //et=abs((-0.91934054-xr)/-0.91934054)*100;
        et=abs((2-xr)/2)*100;
    end
    myB(i)=xr;
    myE(i)=xrold;
    myG(i)=xroldold;
    myD(i)=et;
    
    while ea>es & iter<imax;
        
        i=i+1;
        xroldold=xrold;
        xrold=xr;
        xr=xrold-(((f(xrold)/h(xrold))*(xroldold-xrold))/((f(xroldold)/h(xroldold))-(f(xrold)/h(xrold))));
        iter=iter+1;
        myA(i)=iter;
        if xr~=0 then
            ea=abs((xr-xrold)/xr)*100;
            et=abs((2-xr)/2)*100;
        end
        myB(i)=xr;
        myE(i)=xrold;
        myG(i)=xroldold;
        myC(i)=ea;
        myD(i)=et;
    end
    a=myA;
    b=myB;
    c=myC;
    d=myD;
    e=myE;
    g=myG;
    
    
endfunction





function [a,b,c,d]=myBrent(xl,xu,es,imax)
    function y = f(x)
        //y = ((%e)^(-x))-x;
        y=(x^3)+(2*(x^2))+(10*x)-20;
    endfunction
    eps = 2.22044604925031*(10^(-16));
    tol = 0.000001;
    iter=0;
    myCount=1;
    a = xl; 
    b = xu; 
    myTemp=b;
    fa = f(a);
    fb = f(b);
    c = a;
    fc = fa;
    d = b-c;
    e = d;
    if sign(fa) == sign(fb) then
        a=c;
        fa=fc;
        d=b-c;
        e=d;
    end
    if abs(fa)<abs(fb) then
        c=b;
        b=a;
        a=c;
        fc=fb;
        fb=fa;
        fa=fc;
    end
    m=0.5*(a-b);
    tol=2*eps*max(abs(b),1);
    

    if abs(e)>=tol & abs(fc) then
        s=fb/fc;
        if a==c then

            p=2*m*s;
            q=1-s;
        else
            
            
            q=fc/fa;
            r=fb/fa;
            p=s*((2*m*q*(q-r))-((b-c)*(r-1)));
            q=(q-1)*(r-1)*(s-1);
        end
        
        if p>0 then
            q=-q;
        else
            p=-p;
        end
        if ((2*p)<((3*m*q)-(abs((tol)*q))) & (p<(abs(0.5*e*q)))) then
            e=d;
            d=p/q;
        else
            d=m;
            e=m;
        end
    else
        d=m;
        e=m;
    end
    c=b;
    fc=fb;
    if abs(d)>tol then
        b=b+d;
    else
        b=b-((sign(b-a))*tol)
    end
    if b~=0 then
        ea=abs((b-myTemp)/b)*100;
    else
        ea=100;
    end
    et=abs((0.56714329-b)/(0.56714329))*100;
    iter=iter+1;
    myA(myCount)=iter;
    myB(myCount)=b;
    myC(myCount)=ea;
    myD(myCount)=et;
    myCount=myCount+1;
    fb=f(b);
    
    while abs(m)>= tol | fb==0;
        myTemp=b;
        if sign(fa) == sign(fb) then
            a=c;
            fa=fc;
            d=b-c;
            e=d;
        end
        if abs(fa)<abs(fb) then
            c=b;
            b=a;
            a=c;
            fc=fb;
            fb=fa;
            fa=fc;
        end
        m=0.5*(a-b);
        tol=2*eps*max(abs(b),1);
        

        if abs(e)>=tol & abs(fc) then
            s=fb/fc;
            if a==c then

                
                p=2*m*s;
                q=1-s;
            else
                
                
                q=fc/fa;
                r=fb/fa;
                p=s*((2*m*q*(q-r))-((b-c)*(r-1)));
                q=(q-1)*(r-1)*(s-1);
            end
            
            if p>0 then
                q=-q;
            else
                p=-p;
            end
            if ((2*p)<((3*m*q)-(abs((tol)*q))) & (p<(abs(0.5*e*q)))) then
                e=d;
                d=p/q;
            else
                d=m;
                e=m;
            end
        else
            d=m;
            e=m;
        end
        c=b;
        fc=fb;
        if abs(d)>tol then
            b=b+d;
        else
            b=b-((sign(b-a))*tol)
        end
        if b~=0 then
            ea=abs((b-myTemp)/b)*100;
        else
            ea=100;
        end
        et=abs((0.56714329-b)/(0.56714329))*100;
        myC(myCount)=ea;
        iter=iter+1;
        myA(myCount)=iter;
        myB(myCount)=b;
        myD(myCount)=et;
        myCount=myCount+1;
        fb=f(b);
    end
    a=myA;
    b=myB;
    c=myC;
    d=myD;
    
    
endfunction



