/*

Deiondre Judd V. Nisay
Week 1 Assignment
Function:
-Bisection Method [myBM]
-False-Position Method [myFPM]
-Modified False-Position Method [myMFPM]


*/

function [a,b,c,d,e,g] = myBM(xl,xu,es,imax)
    function y = f(c)
        //y = ((668.06/c)*(1-(%e)^(-0.146843*c)))-40;
        //y = (4*((c)^3))-(6*((c)^2))+(7*(c))-(2.3);
        //y=((sqrt(19.62*c))*tanh((3*sqrt(19.62*c))/(10)))-4;
        //y = ((%e)^(-c))-c;
        //y=(-(c)^2)+(1.8*c)+2.5;
        //y = ((c^2)*abs(cos(sqrt(c))))-5;
       // y = (((%e)^(c))-2)-(cos(((%e)^(c))-2));
       //y=(600*(c^4))-(550*(c^3))+(200*(c^2))-(20*(c))-1;
       //y=(c^3)+(2*(c^2))+(10*c)-20;
       y=(c^3)+(2*(c^2))-c-1;
    endfunction
        
        temp=f(xl)*f(xu);
        ea=100;
        if temp<0 then
            //eligible for bisection method
            i=1;
            iter=0;
            myTemp=0;
            while iter<imax & ea>es;
                xr=(xl+xu)/2;
                myCheck=f(xl)*f(xr);
                
                //et=abs((14.8011-xr)/14.8011)*100;
                //et=abs((0.4501-xr)/0.4501)*100;
                //et=abs((1.05796-xr)/1.05796)*100;
                //et=abs((0.56714329-xr)/0.56714329)*100;
                //et=abs((-0.91934054-xr)/(-0.91934054))*100;
                //et=abs((0.232-xr)/(0.232))*100;
                //et=abs((1.368808108-xr)/(1.368808108))*100;
                et=abs((0.80193774-xr)/(0.80193774))*100;
                if xr~=0 then
                    ea=abs((xr-myTemp)/xr)*100;
                else
                    ea=100;
                end
                if iter~=0 then
                    myE(i)=ea;
                end
                myB(i)=xl;
                myC(i)=xu;
                myD(i)=xr;
                myG(i)=et;
                if myCheck<0 then
                    xu=xr;
                    iter=iter+1;
                    myA(i)=iter;
                elseif myCheck>0 then
                    xl=xr;
                    iter=iter+1;
                    myA(i)=iter;
                else
                    ea=0;
                end
                myTemp=xr;
                i=i+1;
                
            end
            a=myA;
            b=myB;
            c=myC;
            d=myD;
            e=myE;
            g=myG;
        else
            a="input values not eligible";
            b="input values not eligible";
            c="input values not eligible";
            d="input values not eligible";
            e="input values not eligible";
            g="input values not eligible";
        end

        
endfunction

function [a,b,c,d,e,g] = myFPM(xl,xu,es,imax)
    function y = f(c)
        //y = ((668.06/c)*(1-(%e)^(-0.146843*c)))-40;
        //y = (4*((c)^3))-(6*((c)^2))+(7*(c))-(2.3);
        //y=((sqrt(19.62*c))*tanh((3*sqrt(19.62*c))/(10)))-4;
        //y = ((c^2)*abs(cos(sqrt(c))))-5;
        //y = ((9.81*c/15)*(1-(%e)^(-(15/c)*9)))-35;
        y = (((%e)^(c))-2)-(cos(((%e)^(c))-2));
    endfunction
        
        temp=f(xl)*f(xu);
        ea=100;
        if temp<0 then
            //eligible for false-position method
            i=1;
            iter=0;
            myTemp=0;
            while iter<imax & ea>es;
                xr=xu-((f(xu)*(xl-xu))/(f(xl)-f(xu)));
                myCheck=f(xl)*f(xr);
                //et=abs((14.8011-xr)/14.8011)*100;
                //et=abs((0.4501-xr)/0.4501)*100;
                et=abs((1.008-xr)/1.008)*100;
                ea=abs((xr-myTemp)/xr)*100;
                if iter~=0 then
                    myE(i)=ea;
                end
                myB(i)=xl;
                myC(i)=xu;
                myD(i)=xr;
                myG(i)=et;
                if myCheck<0 then
                    
                    xu=xr;
                    iter=iter+1;
                    myA(i)=iter;
                elseif myCheck>0 then
                    xl=xr;
                    iter=iter+1;
                    myA(i)=iter;
                else
                    iter=20;
                end
                disp(ea);
                myTemp=xr;
                i=i+1;
                
            end
            a=myA;
            b=myB;
            c=myC;
            d=myD;
            e=myE;
            g=myG;
        else
            a="input values not eligible";
            b="input values not eligible";
            c="input values not eligible";
            d="input values not eligible";
            e="input values not eligible";
            g="input values not eligible";
        end

        
endfunction

function [a,b,c,d,e,g] = myMFPM(xl,xu,es,imax)
    function y = f(c)
        //y = ((668.06/c)*(1-(%e)^(-0.146843*c)))-40;
        //y = (4*((c)^3))-(6*((c)^2))+(7*(c))-(2.3);
        //y=((sqrt(19.62*c))*tanh((3*sqrt(19.62*c))/(10)))-4;
        y=(600*(c^4))-(550*(c^3))+(200*(c^2))-(20*(c))-1;
    endfunction
    iter=0;
    fl=f(xl);
    fu=f(xu);
    temp=f(xl)*f(xu);
    i=1;
    il=0;
    iu=0;
    xr=0;
    if temp<0 then
    
        xrold=xr;
        xr=xu-((fu)*((xl-xu)/(fl-fu)));
        fr=f(xr);
        iter=iter+1;
        myA(i)=iter;
        if xr~=0 then
            //et=abs((14.8011-xr)/14.8011)*100;
            //et=abs((0.4501-xr)/0.4501)*100;
            et=abs((0.232-xr)/0.232)*100;
            ea=abs((xr-xrold)/xr)*100;
        end
        myB(i)=xl;
        myC(i)=xu;
        myD(i)=xr;
        myG(i)=et;
        test=fl*fr;
        if test<0 then
            xu=xr;
            fu=f(xu);
            iu=0;
            il=il+1;
            if il>=2 then
                fl=fl/2;
                il=0;
            end
        elseif test>0 then
            xl=xr;
            fl=f(xl);
            il=0;
            iu=iu+1;
            if iu>=2 then
                fu=fu/2;
                iu=0;
            end
        else
            ea=0;
        end
        while iter<imax & ea>es;
            i=i+1;
            xrold=xr;
            xr=xu-((fu)*((xl-xu)/(fl-fu)));
            fr=f(xr);
            iter=iter+1;
            myA(i)=iter;
            if xr~=0 then
                //et=abs((14.8011-xr)/14.8011)*100;
                //et=abs((0.4501-xr)/0.4501)*100;
                et=abs((0.232-xr)/0.232)*100;
                ea=abs((xr-xrold)/xr)*100;
            end
            
            myE(i)=ea;
            
            myB(i)=xl;
            myC(i)=xu;
            myD(i)=xr;
            myG(i)=et;
            test=fl*fr;
            if test<0 then
                xu=xr;
                fu=f(xu);
                iu=0;
                il=il+1;
                if il>=2 then
                    fl=fl/2;
                    il=0;
                end
            elseif test>0 then
                xl=xr;
                fl=f(xl);
                il=0;
                iu=iu+1;
                if iu>=2 then
                    fu=fu/2;
                    iu=0;
                end
            else
                ea=0;
            end
        end
        a=myA;
        b=myB;
        c=myC;
        d=myD;
        e=myE;
        g=myG;
    else
        a="input values not eligible";
            b="input values not eligible";
            c="input values not eligible";
            d="input values not eligible";
            e="input values not eligible";
            g="input values not eligible";
    end
    
endfunction
