v1=input('Type the first weight:  ');
v2=input('Type the second weight:  ');
v3=input('Type the third weight:  ');
v4=input('Type the fourth weight:  ');
v5=input('Type the fifth weight:  ');
v=[v1 v2 v3 v4 v5];
d=v1+v2+v3+v4+v5-1;
x=perms(v);
p1=0;
t1=0;
p2=0;
t2=0;
p3=0;
t3=0;
for k=1:120
    if(mod(d,x(k,1))==0 & mod(d,x(k,2))==0 & mod(d-x(k,2),x(k,3))==0 & mod(d-x(k,5),x(k,4))==0 & mod(d-x(k,4),x(k,5))==0)
        p1=p1+1;
    else
        p1=p1;
    end   
end
w1=zeros(2*p1,7);
p1=0;
for k=1:120
    if(mod(d,x(k,1))==0 & mod(d,x(k,2))==0 & mod(d-x(k,2),x(k,3))==0 & mod(d-x(k,5),x(k,4))==0 & mod(d-x(k,4),x(k,5))==0)
        p1=p1+1;
        r1(p1)=x(k,1);
        r2(p1)=0;
        r3(p1)=x(k,2);
        r4(p1)=x(k,3);
        r5(p1)=0;
        r6(p1)=x(k,4);
        r7(p1)=x(k,5);
        s1(p1)=d/x(k,1);
        s2(p1)=0;
        s3(p1)=d/x(k,2);
        s4(p1)=(d-x(k,2))/x(k,3);
        s5(p1)=0;
        s6(p1)=(d-x(k,5))/x(k,4);
        s7(p1)=(d-x(k,4))/x(k,5);
        w1(2*p1-1,1)=r1(p1);
        w1(2*p1-1,2)=r2(p1);
        w1(2*p1-1,3)=r3(p1);
        w1(2*p1-1,4)=r4(p1);
        w1(2*p1-1,5)=r5(p1);
        w1(2*p1-1,6)=r6(p1);
        w1(2*p1-1,7)=r7(p1);
        w1(2*p1,1)=s1(p1);
        w1(2*p1,2)=s2(p1);
        w1(2*p1,3)=s3(p1);
        w1(2*p1,4)=s4(p1);
        w1(2*p1,5)=s5(p1);
        w1(2*p1,6)=s6(p1);
        w1(2*p1,7)=s7(p1);
        d;
        
    else
        t1=t1+1;
    end   
end
     
for k=1:120
    if(mod(d,x(k,1))==0 & mod(d,x(k,2))==0 & mod(d-x(k,2),x(k,3))==0 & mod(d,x(k,4))==0 & mod(d-x(k,4),x(k,5))==0)
        p2=p2+1;
    else
        p2=p2;
    end   
end
w2=zeros(2*p2,7);
p2=0;
for k=1:120
    if(mod(d,x(k,1))==0 & mod(d,x(k,2))==0 & mod(d-x(k,2),x(k,3))==0 & mod(d,x(k,4))==0 & mod(d-x(k,4),x(k,5))==0)
        p2=p2+1;
        r1(p2)=x(k,1);
        r2(p2)=0;
        r3(p2)=x(k,2);
        r4(p2)=x(k,3);
        r5(p2)=0;
        r6(p2)=x(k,4);
        r7(p2)=x(k,5);
        s1(p2)=d/x(k,1);
        s2(p2)=0;
        s3(p2)=d/x(k,2);
        s4(p2)=(d-x(k,2))/x(k,3);
        s5(p2)=0;
        s6(p2)=d/x(k,4);
        s7(p2)=(d-x(k,4))/x(k,5);
        w2(2*p2-1,1)=r1(p2);
        w2(2*p2-1,2)=r2(p2);
        w2(2*p2-1,3)=r3(p2);
        w2(2*p2-1,4)=r4(p2);
        w2(2*p2-1,5)=r5(p2);
        w2(2*p2-1,6)=r6(p2);
        w2(2*p2-1,7)=r7(p2);
        w2(2*p2,1)=s1(p2);
        w2(2*p2,2)=s2(p2);
        w2(2*p2,3)=s3(p2);
        w2(2*p2,4)=s4(p2);
        w2(2*p2,5)=s5(p2);
        w2(2*p2,6)=s6(p2);
        w2(2*p2,7)=s7(p2);
        d;
        
    else
        t2=t2+1;
    end   
end

for k=1:120
    if(mod(d,x(k,1))==0 & mod(d-x(k,3),x(k,2))==0 & mod(d-x(k,2),x(k,3))==0 & mod(d-x(k,5),x(k,4))==0 & mod(d-x(k,4),x(k,5))==0)
        p3=p3+1;
    else
        p3=p3;
    end   
end
w3=zeros(2*p3,7);
p3=0;
for k=1:120
    if(mod(d,x(k,1))==0 & mod(d-x(k,3),x(k,2))==0 & mod(d-x(k,2),x(k,3))==0 & mod(d-x(k,5),x(k,4))==0 & mod(d-x(k,4),x(k,5))==0)
        p3=p3+1;
        r1(p3)=x(k,1);
        r2(p3)=0;
        r3(p3)=x(k,2);
        r4(p3)=x(k,3);
        r5(p3)=0;
        r6(p3)=x(k,4);
        r7(p3)=x(k,5);
        s1(p3)=d/x(k,1);
        s2(p3)=0;
        s3(p3)=(d-x(k,3))/x(k,2);
        s4(p3)=(d-x(k,2))/x(k,3);
        s5(p3)=0;
        s6(p3)=(d-x(k,5))/x(k,4);
        s7(p3)=(d-x(k,4))/x(k,5);
        w3(2*p3-1,1)=r1(p3);
        w3(2*p3-1,2)=r2(p3);
        w3(2*p3-1,3)=r3(p3);
        w3(2*p3-1,4)=r4(p3);
        w3(2*p3-1,5)=r5(p3);
        w3(2*p3-1,6)=r6(p3);
        w3(2*p3-1,7)=r7(p3);
        w3(2*p3,1)=s1(p3);
        w3(2*p3,2)=s2(p3);
        w3(2*p3,3)=s3(p3);
        w3(2*p3,4)=s4(p3);
        w3(2*p3,5)=s5(p3);
        w3(2*p3,6)=s6(p3);
        w3(2*p3,7)=s7(p3);
        d;
        
    else
        t3=t3+1;
    end   
end
if t1==120
    disp('Does no admit BP+Chain+Cycle polynomial');
    fprintf('\n')
else
    disp('Admit BP+Chain+Cycle polynomial');
    fprintf('\n           Weights: (%d,%d,%d,%d,%d)\n',w1(1,1),w1(1,3),w1(1,4),w1(1,6),w1(1,7))
    fprintf('\n           A BP+Chain+Cycle polynomial is z_{0}^{%d}+z_{1}^{%d}+z_{1}z_{2}^{%d}+z_{4}z_{3}^{%d}+z_{3}z_{4}^{%d}\n\n',w1(2,1),w1(2,3),w1(2,4),w1(2,6),w1(2,7))

end
if t2==120
    disp('Does no admit BP+Chain+Chain polynomial');
    fprintf('\n')
else
    disp('Admit BP+Chain+Chain polynomial');
    fprintf('\n           Weights: (%d,%d,%d,%d,%d)\n',w2(1,1),w2(1,3),w2(1,4),w2(1,6),w2(1,7))
    fprintf('\n           A BP+Chain+Chain polynomial is z_{0}^{%d}+z_{1}^{%d}+z_{1}z_{2}^{%d}+z_{3}^{%d}+z_{3}z_{4}^{%d}\n\n',w2(2,1),w2(2,3),w2(2,4),w2(2,6),w2(2,7))

end
if t3==120
    disp('Does no admit BP+Cycle+Cycle polynomial');
    fprintf('\n')
else
    disp('Admit BP+Cycle+Cycle polynomial');
    fprintf('\n           Weights: (%d,%d,%d,%d,%d)\n',w3(1,1),w3(1,3),w3(1,4),w3(1,6),w3(1,7))
    fprintf('\n           A BP+Cycle+Cycle polynomial is z_{0}^{%d}+z_{2}z_{1}^{%d}+z_{1}z_{2}^{%d}+z_{4}z_{3}^{%d}+z_{3}z_{4}^{%d}\n\n',w3(2,1),w3(2,3),w3(2,4),w3(2,6),w3(2,7))

end
