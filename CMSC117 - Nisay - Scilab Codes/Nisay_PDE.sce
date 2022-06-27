/*

Deiondre Judd V. Nisay
Final Exam
Function:
-Liebmann Method 3x3 [myLM3]
-Liebmann Method 7x7 [myLM7]
-Liebmann Method 7x7 [myLM70]
    -Scilab can't handle a collecting data from a 70x70 array, so what I did was I collected 70x41 array worth of data, and then did the other half by getting the remaining 70x29 array. You will see codes that are commented out but the purpose for that is to switch getting a 70x41 array to a 70x29 array

*/

function [b,c,d]=myLM3(mew,es)
    collect=0;
    ea=100;
    x=1;
    myCheck=0;
    myA=0;
    myCountA=1;
    myCountB=1;
    myCountC=1;
    /* to set boundaries */
    for i=1:3
        for j=1:3
            a(i,j)=0;
        end
    end
    while myCheck<9
        myCheck=0;
        for i=3:-1:1
            for j=1:3
                aold(i,j)=a(i,j);
                if i==1 then
                    if j==1 then
                        a(i,j)= (a(i,j+1)+75+a(i+1,j)+100)/(4);
                    elseif j==3 then
                        
                        a(i,j)= (50+a(i,j-1)+a(i+1,j)+100)/(4);
                    else
                        
                        a(i,j)= (a(i,j+1)+a(i,j-1)+a(i+1,j)+100)/(4);
                    end
                elseif i==3 then
                    if j==1 then
                        
                        a(i,j)= (a(i,j+1)+75+0+a(i-1,j))/(4);
                    elseif j==3 then
                        
                        a(i,j)= (50+a(i,j-1)+0+a(i-1,j))/(4);
                    else
                        
                        a(i,j)= (a(i,j+1)+a(i,j-1)+0+a(i-1,j))/(4);
                    end
                else
                    if j==1 then
                        
                        a(i,j)= (a(i,j+1)+75+a(i+1,j)+a(i-1,j))/(4);
                    elseif j==3 then
                        
                        a(i,j)= (50+a(i,j-1)+a(i+1,j)+a(i-1,j))/(4);
                    else
                        a(i,j)= (a(i,j+1)+a(i,j-1)+a(i+1,j)+a(i-1,j))/(4);
                    end
                end

                a(i,j)= (mew*(a(i,j)))+((1-mew)*aold(i,j));
                if x~=1 then
                    ea=(abs((a(i,j)-aold(i,j))/(a(i,j))))*100;
                    if ea<=es then
                        myCheck=myCheck+1;
                    end
                end
            end
        end
        disp(a);
        
        /* To save values into a sheet */
        
        for i=1:3
            for j=1:3
                if j==1 then
                    myA(myCountA)=a(i,j);
                    myCountA=myCountA+1;
                elseif j==2 then
                    myB(myCountB)=a(i,j);
                    myCountB=myCountB+1;
                else
                    myC(myCountC)=a(i,j);
                    myCountC=myCountC+1;
                end
            end
        end
        
        myCountA=myCountA+1;
        myCountB=myCountB+1;
        myCountC=myCountC+1;
        
        x=x+1;
    end
    
    b=myA;
    c=myB;
    d=myC;


   
endfunction

function [b,c,d,e,f,g,h]=myLM7(mew,es)
    collect=0;
    ea=100;
    x=1;
    myCheck=0;
    myA=0;
    myCountA=1;
    myCountB=1;
    myCountC=1;
    myCountD=1;
    myCountE=1;
    myCountF=1;
    myCountG=1;
    /* to set boundaries */
    for i=1:7
        for j=1:7
            a(i,j)=0;
        end
    end
    while myCheck<49
        myCheck=0;
        for i=7:-1:1
            for j=1:7
                aold(i,j)=a(i,j);
                if i==1 then
                    if j==1 then
                        a(i,j)= (a(i,j+1)+75+a(i+1,j)+100)/(4);
                    elseif j==7 then
                        
                        a(i,j)= (50+a(i,j-1)+a(i+1,j)+100)/(4);
                    else
                        
                        a(i,j)= (a(i,j+1)+a(i,j-1)+a(i+1,j)+100)/(4);
                    end
                elseif i==7 then
                    if j==1 then
                        
                        a(i,j)= (a(i,j+1)+75+0+a(i-1,j))/(4);
                    elseif j==7 then
                        
                        a(i,j)= (50+a(i,j-1)+0+a(i-1,j))/(4);
                    else
                        
                        a(i,j)= (a(i,j+1)+a(i,j-1)+0+a(i-1,j))/(4);
                    end
                else
                    if j==1 then
                        
                        a(i,j)= (a(i,j+1)+75+a(i+1,j)+a(i-1,j))/(4);
                    elseif j==7 then
                        
                        a(i,j)= (50+a(i,j-1)+a(i+1,j)+a(i-1,j))/(4);
                    else
                        a(i,j)= (a(i,j+1)+a(i,j-1)+a(i+1,j)+a(i-1,j))/(4);
                    end
                end

                a(i,j)= (mew*(a(i,j)))+((1-mew)*aold(i,j));
                if x~=1 then
                    ea=(abs((a(i,j)-aold(i,j))/(a(i,j))))*100;
                    if ea<=es then
                        myCheck=myCheck+1;
                    end
                end
            end
        end
        disp(a);
        
        /* To save values into a sheet */
        
        for i=1:7
            for j=1:7
                if j==1 then
                    myA(myCountA)=a(i,j);
                    myCountA=myCountA+1;
                elseif j==2 then
                    myB(myCountB)=a(i,j);
                    myCountB=myCountB+1;
                elseif j==3 then
                    myC(myCountC)=a(i,j);
                    myCountC=myCountC+1;
                elseif j==4 then
                    myD(myCountD)=a(i,j);
                    myCountD=myCountD+1;
                elseif j==5 then
                    myE(myCountE)=a(i,j);
                    myCountE=myCountE+1;
                elseif j==6 then
                    myF(myCountF)=a(i,j);
                    myCountF=myCountF+1;
                else
                    myG(myCountG)=a(i,j);
                    myCountG=myCountG+1;
                end
            end
        end
        
        myCountA=myCountA+1;
        myCountB=myCountB+1;
        myCountC=myCountC+1;
        myCountD=myCountD+1;
        myCountE=myCountE+1;
        myCountF=myCountF+1;
        myCountG=myCountG+1;
        
        x=x+1;
    end
    
    b=myA;
    c=myB;
    d=myC;
    e=myD;
    f=myE;
    g=myF;
    h=myG;


   
endfunction


function [/*b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,l1,m1,n1,o1,p1,q1*/r1,s1,t1,u1,v1,w1,x1,y1,z1,b2,c2,d2,e2,f2,g2,h2,i2,j2,k2,l2,m2,n2,o2,p2,q2,r2,s2,t2,u2]=myLM70(mew,es)
    collect=0;
    ea=100;
    x=1;
    myCheck=0;
    myA=0;
    
    /*myCountA=1;
    myCountB=1;
    myCountC=1;
    myCountD=1;
    myCountE=1;
    myCountF=1;
    myCountG=1;
    myCountH=1;
        myCountI=1;
        myCountJ=1;
        myCountK=1;
        myCountL=1;
        myCountM=1;
        myCountN=1;
        myCountO=1;
        myCountP=1;
        myCountQ=1;
        myCountR=1;
        myCountS=1;
        myCountT=1;
        myCountU=1;
        myCountV=1;
        myCountW=1;
        myCountX=1;
        myCountY=1;
        myCountZ=1;
        
        myCountA1=1;
        myCountB1=1;
        myCountC1=1;
        myCountD1=1;
        myCountE1=1;
        myCountF1=1;
        myCountG1=1;
        myCountH1=1;
        myCountI1=1;
        myCountJ1=1;
        myCountK1=1;
        myCountL1=1;
        myCountM1=1;
        myCountN1=1;
        myCountO1=1;*/
        
        /*--first half--*/
        
        myCountP1=1;
        myCountQ1=1;
        myCountR1=1;
        myCountS1=1;
        myCountT1=1;
        myCountU1=1;
        myCountV1=1;
        myCountW1=1;
        myCountX1=1;
        myCountY1=1;
        myCountZ1=1;
        myCountA2=1;
        myCountB2=1;
        myCountC2=1;
        myCountD2=1;
        myCountE2=1;
        myCountF2=1;
        myCountG2=1;
        myCountH2=1;
        myCountI2=1;
        myCountJ2=1;
        myCountK2=1;
        myCountL2=1;
        myCountM2=1;
        myCountN2=1;
        myCountO2=1;
        myCountP2=1;
        myCountQ2=1;
        myCountR2=1;
        
        
        
        
    /* to set boundaries */
    for i=1:70
        for j=1:70
            a(i,j)=0;
        end
    end
    while myCheck<4900
        myCheck=0;
        for i=70:-1:1
            for j=1:70
                aold(i,j)=a(i,j);
                if i==1 then
                    if j==1 then
                        a(i,j)= (a(i,j+1)+75+a(i+1,j)+100)/(4);
                    elseif j==70 then
                        
                        a(i,j)= (50+a(i,j-1)+a(i+1,j)+100)/(4);
                    else
                        
                        a(i,j)= (a(i,j+1)+a(i,j-1)+a(i+1,j)+100)/(4);
                    end
                elseif i==70 then
                    if j==1 then
                        
                        a(i,j)= (a(i,j+1)+75+0+a(i-1,j))/(4);
                    elseif j==70 then
                        
                        a(i,j)= (50+a(i,j-1)+0+a(i-1,j))/(4);
                    else
                        
                        a(i,j)= (a(i,j+1)+a(i,j-1)+0+a(i-1,j))/(4);
                    end
                else
                    if j==1 then
                        
                        a(i,j)= (a(i,j+1)+75+a(i+1,j)+a(i-1,j))/(4);
                    elseif j==70 then
                        
                        a(i,j)= (50+a(i,j-1)+a(i+1,j)+a(i-1,j))/(4);
                    else
                        a(i,j)= (a(i,j+1)+a(i,j-1)+a(i+1,j)+a(i-1,j))/(4);
                    end
                end

                a(i,j)= (mew*(a(i,j)))+((1-mew)*aold(i,j));
                if x~=1 then
                    ea=(abs((a(i,j)-aold(i,j))/(a(i,j))))*100;
                    if ea<=es then
                        myCheck=myCheck+1;
                    end
                end
            end
        end

        /* To save values into a sheet */
       
        for i=1:70
            for j=1:70
                /*if j==1 then
                    myA(myCountA)=a(i,j);
                    myCountA=myCountA+1;
                elseif j==2 then
                    myB(myCountB)=a(i,j);
                    myCountB=myCountB+1;
                elseif j==3 then
                    myC(myCountC)=a(i,j);
                    myCountC=myCountC+1;
                elseif j==4 then
                    myD(myCountD)=a(i,j);
                    myCountD=myCountD+1;
                elseif j==5 then
                    myE(myCountE)=a(i,j);
                    myCountE=myCountE+1;
                elseif j==6 then
                    myF(myCountF)=a(i,j);
                    myCountF=myCountF+1;
                elseif j==7 then
                    myG(myCountG)=a(i,j);
                    myCountG=myCountG+1;
                elseif j==8 then
                    myH(myCountH)=a(i,j);
                    myCountH=myCountH+1;
                elseif j==9 then
                    myI(myCountI)=a(i,j);
                    myCountI=myCountI+1;
                elseif j==10 then
                    myJ(myCountJ)=a(i,j);
                    myCountJ=myCountJ+1;
                elseif j==11 then
                    myK(myCountK)=a(i,j);
                    myCountK=myCountK+1;
                elseif j==12 then
                    myL(myCountL)=a(i,j);
                    myCountL=myCountL+1;
                elseif j==13 then
                    myM(myCountM)=a(i,j);
                    myCountM=myCountM+1;
                elseif j==14 then
                    myN(myCountN)=a(i,j);
                    myCountN=myCountN+1;
                elseif j==15 then
                    myO(myCountO)=a(i,j);
                    myCountO=myCountO+1;
                elseif j==16 then
                    myP(myCountP)=a(i,j);
                    myCountP=myCountP+1;
                elseif j==17 then
                    myQ(myCountQ)=a(i,j);
                    myCountQ=myCountQ+1;
                elseif j==18 then
                    myR(myCountR)=a(i,j);
                    myCountR=myCountR+1;
                elseif j==19 then
                    myS(myCountS)=a(i,j);
                    myCountS=myCountS+1;
                elseif j==20 then
                    myT(myCountT)=a(i,j);
                    myCountT=myCountT+1;
                elseif j==21 then
                    myU(myCountU)=a(i,j);
                    myCountU=myCountU+1;
                elseif j==22 then
                    myV(myCountV)=a(i,j);
                    myCountV=myCountV+1;
                elseif j==23 then
                    myW(myCountW)=a(i,j);
                    myCountW=myCountW+1;
                elseif j==24 then
                    myX(myCountX)=a(i,j);
                    myCountX=myCountX+1;
                elseif j==25 then
                    myY(myCountY)=a(i,j);
                    myCountY=myCountY+1;
                elseif j==26 then
                    myZ(myCountZ)=a(i,j);
                    myCountZ=myCountZ+1;
                elseif j==27 then
                    myA1(myCountA1)=a(i,j);
                    myCountA1=myCountA1+1;
                elseif j==28 then
                    myB1(myCountB1)=a(i,j);
                    myCountB1=myCountB1+1;
                elseif j==29 then
                    myC1(myCountC1)=a(i,j);
                    myCountC1=myCountC1+1;
                elseif j==30 then
                    myD1(myCountD1)=a(i,j);
                    myCountD1=myCountD1+1;
                elseif j==31 then
                    myE1(myCountE1)=a(i,j);
                    myCountE1=myCountE1+1;
                elseif j==32 then
                    myF1(myCountF1)=a(i,j);
                    myCountF1=myCountF1+1;
                elseif j==33 then
                    myG1(myCountG1)=a(i,j);
                    myCountG1=myCountG1+1;
                elseif j==34 then
                    myH1(myCountH1)=a(i,j);
                    myCountH1=myCountH1+1;
                elseif j==35 then
                    myI1(myCountI1)=a(i,j);
                    myCountI1=myCountI1+1;
                elseif j==36 then
                    myJ1(myCountJ1)=a(i,j);
                    myCountJ1=myCountJ1+1;
                elseif j==37 then
                    myK1(myCountK1)=a(i,j);
                    myCountK1=myCountK1+1;
                elseif j==38 then
                    myL1(myCountL1)=a(i,j);
                    myCountL1=myCountL1+1;
                elseif j==39 then
                    myM1(myCountM1)=a(i,j);
                    myCountM1=myCountM1+1;
                elseif j==40 then
                    myN1(myCountN1)=a(i,j);
                    myCountN1=myCountN1+1;
                elseif j==41 then
                    myO1(myCountO1)=a(i,j);
                    myCountO1=myCountO1+1;*/
                    
                 /*--first half--*/
                    
                /*else*/if j==42 then
                    myP1(myCountP1)=a(i,j);
                    myCountP1=myCountP1+1;
                elseif j==43 then
                    myQ1(myCountQ1)=a(i,j);
                    myCountQ1=myCountQ1+1;
                elseif j==44 then
                    myR1(myCountR1)=a(i,j);
                    myCountR1=myCountR1+1;
                elseif j==45 then
                    myS1(myCountS1)=a(i,j);
                    myCountS1=myCountS1+1;
                elseif j==46 then
                    myT1(myCountT1)=a(i,j);
                    myCountT1=myCountT1+1;
                elseif j==47 then
                    myU1(myCountU1)=a(i,j);
                    myCountU1=myCountU1+1;
                elseif j==48 then
                    myV1(myCountV1)=a(i,j);
                    myCountV1=myCountV1+1;
                elseif j==49 then
                    myW1(myCountW1)=a(i,j);
                    myCountW1=myCountW1+1;
                elseif j==50 then
                    myX1(myCountX1)=a(i,j);
                    myCountX1=myCountX1+1;
                elseif j==51 then
                    myY1(myCountY1)=a(i,j);
                    myCountY1=myCountY1+1;
                elseif j==52 then
                    myZ1(myCountZ1)=a(i,j);
                    myCountZ1=myCountZ1+1;
                elseif j==53 then
                    myA2(myCountA2)=a(i,j);
                    myCountA2=myCountA2+1;
                elseif j==54 then
                    myB2(myCountB2)=a(i,j);
                    myCountB2=myCountB2+1;
                elseif j==55 then
                    myC2(myCountC2)=a(i,j);
                    myCountC2=myCountC2+1;
                elseif j==56 then
                    myD2(myCountD2)=a(i,j);
                    myCountD2=myCountD2+1;
                elseif j==57 then
                    myE2(myCountE2)=a(i,j);
                    myCountE2=myCountE2+1;
                elseif j==58 then
                    myF2(myCountF2)=a(i,j);
                    myCountF2=myCountF2+1;
                elseif j==59 then
                    myG2(myCountG2)=a(i,j);
                    myCountG2=myCountG2+1;
                elseif j==60 then
                    myH2(myCountH2)=a(i,j);
                    myCountH2=myCountH2+1;
                elseif j==61 then
                    myI2(myCountI2)=a(i,j);
                    myCountI2=myCountI2+1;
                elseif j==62 then
                    myJ2(myCountJ2)=a(i,j);
                    myCountJ2=myCountJ2+1;
                elseif j==63 then
                    myK2(myCountK2)=a(i,j);
                    myCountK2=myCountK2+1;
                elseif j==64 then
                    myL2(myCountL2)=a(i,j);
                    myCountL2=myCountL2+1;
                elseif j==65 then
                    myM2(myCountM2)=a(i,j);
                    myCountM2=myCountM2+1;
                elseif j==66 then
                    myN2(myCountN2)=a(i,j);
                    myCountN2=myCountN2+1;
                elseif j==67 then
                    myO2(myCountO2)=a(i,j);
                    myCountO2=myCountO2+1;
                elseif j==68 then
                    myP2(myCountP2)=a(i,j);
                    myCountP2=myCountP2+1;
                elseif j==69 then
                    myQ2(myCountQ2)=a(i,j);
                    myCountQ2=myCountQ2+1;
                elseif j==70 then
                    myR2(myCountR2)=a(i,j);
                    myCountR2=myCountR2+1;
                    
                /*--second half--*/    
                    
                end
            end
        end
        
        /*myCountA=myCountA+1;
        myCountB=myCountB+1;
        myCountC=myCountC+1;
        myCountD=myCountD+1;
        myCountE=myCountE+1;
        myCountF=myCountF+1;
        myCountG=myCountG+1;
        myCountH=myCountH+1;
        myCountI=myCountI+1;
        myCountJ=myCountJ+1;
        myCountK=myCountK+1;
        myCountL=myCountL+1;
        myCountM=myCountM+1;
        myCountN=myCountN+1;
        myCountO=myCountO+1;
        myCountP=myCountP+1;
        myCountQ=myCountQ+1;
        myCountR=myCountR+1;
        myCountS=myCountS+1;
        myCountT=myCountT+1;
        myCountU=myCountU+1;
        myCountV=myCountV+1;
        myCountW=myCountW+1;
        myCountX=myCountX+1;
        myCountY=myCountY+1;
        myCountZ=myCountZ+1;
        
        myCountA1=myCountA1+1;
        myCountB1=myCountB1+1;
        myCountC1=myCountC1+1;
        myCountD1=myCountD1+1;
        myCountE1=myCountE1+1;
        myCountF1=myCountF1+1;
        myCountG1=myCountG1+1;
        myCountH1=myCountH1+1;
        myCountI1=myCountI1+1;
        myCountJ1=myCountJ1+1;
        myCountK1=myCountK1+1;
        myCountL1=myCountL1+1;
        myCountM1=myCountM1+1;
        myCountN1=myCountN1+1;
        myCountO1=myCountO1+1;*/
        
        
        /*--first half--*/
        
        myCountP1=myCountP1+1;
        myCountQ1=myCountQ1+1;
        myCountR1=myCountR1+1;
        myCountS1=myCountS1+1;
        myCountT1=myCountT1+1;
        myCountU1=myCountU1+1;
        myCountV1=myCountV1+1;
        myCountW1=myCountW1+1;
        myCountX1=myCountX1+1;
        myCountY1=myCountY1+1;
        myCountZ1=myCountZ1+1;
        
        myCountA2=myCountA2+1;
        myCountB2=myCountB2+1;
        myCountC2=myCountC2+1;
        myCountD2=myCountD2+1;
        myCountE2=myCountE2+1;
        myCountF2=myCountF2+1;
        myCountG2=myCountG2+1;
        myCountH2=myCountH2+1;
        myCountI2=myCountI2+1;
        myCountJ2=myCountJ2+1;
        myCountK2=myCountK2+1;
        myCountL2=myCountL2+1;
        myCountM2=myCountM2+1;
        myCountN2=myCountN2+1;
        myCountO2=myCountO2+1;
        myCountP2=myCountP2+1;
        myCountQ2=myCountQ2+1;
        myCountR2=myCountR2+1;
        
        /*--second half--*/
        
        x=x+1;
    end
    
    /*b=myA;
    c=myB;
    d=myC;
    e=myD;
    f=myE;
    g=myF;
    h=myG;
    i=myH;
    j=myI;
    k=myJ;
    l=myK;
    m=myL;
    n=myM;
    o=myN;
    p=myO;
    q=myP;
    r=myQ;
    s=myR;
    t=myS;
    u=myT;
    v=myU;
    w=myV;
    x=myW;
    y=myX;
    z=myY;
    
    b1=myZ;
    c1=myA1;
    d1=myB1;
    e1=myC1;
    f1=myD1;
    g1=myE1;
    h1=myF1;
    i1=myG1;
    j1=myH1;
    k1=myI1;
    l1=myJ1;
    m1=myK1;
    n1=myL1;
    o1=myM1;
    p1=myN1;
    q1=myO1;*/
    
    /*--first half--*/
    
    r1=myP1;
    s1=myQ1;
    t1=myR1;
    u1=myS1;
    v1=myT1;
    w1=myU1;
    x1=myV1;
    y1=myW1;
    z1=myX1;
    
    b2=myY1;
    c2=myZ1;
    d2=myA2;
    e2=myB2;
    f2=myC2;
    g2=myD2;
    h2=myE2;
    i2=myF2;
    j2=myG2;
    k2=myH2;
    l2=myI2;
    m2=myJ2;
    n2=myK2;
    o2=myL2;
    p2=myM2;
    q2=myN2;
    r2=myO2;
    s2=myP2;
    t2=myQ2;
    u2=myR2;

    /*--second half--*/
 
   endfunction


