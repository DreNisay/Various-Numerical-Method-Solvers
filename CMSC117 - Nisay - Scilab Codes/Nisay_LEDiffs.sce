/*

Deiondre Judd V. Nisay
1ONG EXAM
Function:
-RandomDifferentia1s [myDIFF]


*/

function [a,b]=myDIFF(x,h1)
    function y = f(x)    
        //y=0.2 + (25*x) - (200*(x^2)) + (675*(x^3)) - (900*(x^4)) + (400*(x^5));
        //y=1-((%e)^(-x));
        //y=(x^2)*((%e)^x);
        //y=(-0.1*(x^4))-(0.15*(x^3))-(0.5*(x^2))-(0.25*x)+1.2;
        y=cos(x);
    endfunction
    
    h2=h1/2;
    
    xp1=x+h1;
    xm1=x-h1;
    
    myCount=1;
    
    E11=(f(xp1)-f(x))/(h1);
    myA(myCount)="Equation 1 with h1";
    myB(myCount)=E11;
    
    myCount=myCount+1;
    xp1=x+h2;
    xm1=x-h2;
    
    E12=(f(xp1)-f(x))/(h2);
    myA(myCount)="Equation 1 with h2";
    myB(myCount)=E12;
    
    myCount=myCount+1;
    xp1=x+h1;
    xp12=x+(2*h1);
    xm1=x-h1;
    
    E21=(-f(xp12)+ (4*f(xp1)) - (3*f(x)))/(2*h1);
    myA(myCount)="Equation 2 with h1";
    myB(myCount)=E21;
    
    myCount=myCount+1;
    xp1=x+h2;
    xp12=x+(2*h2);
    xm1=x-h2;
    
    E22=(-f(xp12)+ (4*f(xp1)) - (3*f(x)))/(2*h2);
    myA(myCount)="Equation 2 with h2";
    myB(myCount)=E22;
    
    myCount=myCount+1;
    xp1=x+h1;
    xm1=x-h1;
    
    E31=(f(x)-f(xm1))/(h1);
    myA(myCount)="Equation 3 with h1";
    myB(myCount)=E31;
    
    myCount=myCount+1;
    xp1=x+h2;
    xm1=x-h2;
    
    E32=(f(x)-f(xm1))/(h2);
    myA(myCount)="Equation 3 with h2";
    myB(myCount)=E32;
    
    myCount=myCount+1;
    xp1=x+h1;
    xm1=x-h1;
    xm2=x-(2*h1);
    
    E41=((3*f(x))- (4*f(xm1)) + f(xm2))/(2*h1);
    myA(myCount)="Equation 4 with h1";
    myB(myCount)=E41;
    
    myCount=myCount+1;
    xp1=x+h2;
    xm1=x-h2;
    xm2=x-(2*h2);
    
    E42=((3*f(x))- (4*f(xm1)) + f(xm2))/(2*h2);
    myA(myCount)="Equation 4 with h2";
    myB(myCount)=E42;
    
    myCount=myCount+1;
    xp1=x+h1;
    xm1=x-h1;
    
    E51=(f(xp1)-f(xm1))/(2*h1);
    myA(myCount)="Equation 5 with h1";
    myB(myCount)=E51;
    
    myCount=myCount+1;
    xp1=x+h2;
    xm1=x-h2;
    
    E52=(f(xp1)-f(xm1))/(2*h2);
    myA(myCount)="Equation 5 with h2";
    myB(myCount)=E52;
    
    
    
    myCount=myCount+1;
    xp1=x+h1;
    xp12=x+(2*h1);
    xm1=x-h1;
    xm12=x-(2*h1);
    
    E61=(-f(xp12)+(8*f(xp1))-(8*f(xm1))+f(xm12))/(12*h1);
    myA(myCount)="Equation 6 with h1";
    myB(myCount)=E61;
    
    
    
    myCount=myCount+1;
    xp1=x+h2;
    xp12=x+(2*h2);
    xm1=x-h2;
    xm12=x-(2*h2);
    
    E62=(-f(xp12)+(8*f(xp1))-(8*f(xm1))+f(xm2))/(12*h2);
    myA(myCount)="Equation 6 with h2";
    myB(myCount)=E62;
    
    
    myCount=myCount+1;
    xp1=x+h1;
    xm1=x-h1;
    
    D=((4/3)*E62)-((1/3)*E61);
    myA(myCount)="Richards Extrapolation";
    myB(myCount)=D;

    a=myA;
    b=myB;
    
endfunction

