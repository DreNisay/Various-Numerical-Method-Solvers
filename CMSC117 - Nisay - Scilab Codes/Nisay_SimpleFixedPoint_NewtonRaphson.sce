/*

Deiondre Judd V. Nisay
Week 3 Assignment
Function:
-Simple Fixed-Point Method [mySFP]
-Newton-Raphson Method [myNR]


*/

function [a,b,c,d]=mySFP(x0,es,imax)
    function y = g(x)
        //y = ((%e)^(-x));
        //y=(((x)^2)-2.5)/1.8;
        //y=(-(x)^2)+(2.8*x)+2.5;
        //y=sqrt((1.8*x)+2.5);
        //y=(2.5)/(x-1.8);
        //y=(6)/((2.1*(x^2))-(11.6*x)+17.5);
        //y=(-(2.1*(x^3))+(11.6*(x^2))+6)/(17.5);
        //y=sqrt(((2.1*(x^3))+(17.5*x)-6)/11.6);
        y=(c^3)+(2*(c^2))-c-1;
    endfunction
    xr=x0;
    iter=0;
    i=1;
    
    xrold=xr;
    xr=g(xrold);
    iter=iter+1;
    myA(i)=iter;
    if xr~=0 then
        ea=abs((xr-xrold)/xr)*100;
        //et=abs((-0.91934054-xr)/-0.91934054)*100;
        //et=abs((0.485-xr)/0.485)*100;
        //et=abs((3.196-xr)/3.196)*100;
        et=abs((1.842-xr)/1.842)*100;
        //et=abs((0.485-xr)/0.485)*100;
    end
    myB(i)=xr;
    myD(i)=et;
    
    while ea>es & iter<imax;
        
        i=i+1;
        xrold=xr;
        xr=g(xrold);
        iter=iter+1;
        myA(i)=iter;
        if xr~=0 then
            ea=abs((xr-xrold)/xr)*100;
            //et=abs((-0.91934054-xr)/-0.91934054)*100;
            //et=abs((0.485-xr)/0.485)*100;
            //et=abs((0.485-xr)/0.485)*100;
            //et=abs((0.485-xr)/0.485)*100;
            //et=abs((3.196-xr)/3.196)*100;
            et=abs((1.842-xr)/1.842)*100;
        end
        myB(i)=xr;
        myC(i)=ea;
        myD(i)=et;
    end
    a=myA;
    b=myB;
    c=myC;
    d=myD;
    
endfunction

function [a,b,c,d]=myNR(x0,es,imax)
    function y = f(x)
        //y = ((%e)^(-x))-x;
        //y=(-(x)^2)+(1.8*x)+2.5;
        //y=(600*(x^4))-(550*(x^3))+(200*(x^2))-(20*(x))-1;
        //y=(x^3)-(2*(x^2))-(4*x)+8;
        //y=(x^3)+(2*(x^2))+(10*x)-20;
        y=(x^3)+(2*(x^2))-x-1;
    endfunction
    
    function dy = h(x)
        //dy = (-(%e)^(-x))-1;
        //dy=(-(2*x))+1.8;
        //dy=(2400*(x^3))-(1650*(x^2))+(400*(x))-(20);
        //dy=(3*(x^2))-(4*(x))-(4);
        dy=(3*(x^2))+(4*(x))-1;
    endfunction
    xr=x0;
    iter=0;
    i=1;
    
    xrold=xr;
    xr=xrold-(f(xrold)/h(xrold));
    iter=iter+1;
    myA(i)=iter;
    if xr~=0 then
        ea=abs((xr-xrold)/xr)*100;
        //et=abs((0.56714329-xr)/0.56714329)*100;
        //et=abs((-0.91934054-xr)/-0.91934054)*100;
        //et=abs((1.368808108-xr)/1.368808108)*100;
        et=abs((0.8019377-xr)/0.8019377)*100;
        //et=abs((-2.2469796-xr)/-2.2469796)*100;
    end
    myB(i)=xr;
    myD(i)=et;
    
    while ea>es & iter<imax;
        
        i=i+1;
        xrold=xr;
        xr=xrold-(f(xrold)/h(xrold));
        iter=iter+1;
        myA(i)=iter;
        if xr~=0 then
            ea=abs((xr-xrold)/xr)*100;
            //et=abs((0.56714329-xr)/0.56714329)*100;
            //et=abs((-0.91934054-xr)/-0.91934054)*100;
            //et=abs((1.368808108-xr)/1.368808108)*100;
            et=abs((0.8019377-xr)/0.8019377)*100;
            //et=abs((-2.2469796-xr)/-2.2469796)*100;
        end
        myB(i)=xr;
        myC(i)=ea;
        myD(i)=et;
    end
    a=myA;
    b=myB;
    c=myC;
    d=myD;
    
endfunction
