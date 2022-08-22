v1=input('Type the first weight: ');
v2=input('Type the second weight: ');
v3=input('Type the third weight: ');
v4=input('Type the fourth weight: ');
v5=input('Type the fifth weight: ');
v=[v1 v2 v3 v4 v5];
d=v1+v2+v3+v4+v5-1;
x=perms(v);
p=0;
q=0;
t=0;
s=0;

for k=1:120
    if(mod(d,x(k,1))==0 & mod(d-x(k,1),x(k,2))==0 & mod(d-x(k,2),x(k,3))==0 & mod(d-x(k,3),x(k,4))==0 & mod(d-x(k,4),x(k,5))==0)
        p=p+1;
    else
        p=p;
    end   
end
w=zeros(2*p,5);
p=0;
for k=1:120
    if(mod(d,x(k,1))==0 & mod(d-x(k,1),x(k,2))==0 & mod(d-x(k,2),x(k,3))==0 & mod(d-x(k,3),x(k,4))==0 & mod(d-x(k,4),x(k,5))==0)
        p=p+1;
        r1(p)=x(k,1);
        r2(p)=x(k,2);
        r3(p)=x(k,3);
        r4(p)=x(k,4);
        r5(p)=x(k,5);
        s1(p)=d/x(k,1);
        s2(p)=(d-x(k,1))/x(k,2);
        s3(p)=(d-x(k,2))/x(k,3);
        s4(p)=(d-x(k,3))/x(k,4);
        s5(p)=(d-x(k,4))/x(k,5);
        w(2*p-1,1)=r1(p);
        w(2*p-1,2)=r2(p);
        w(2*p-1,3)=r3(p);
        w(2*p-1,4)=r4(p);
        w(2*p-1,5)=r5(p);
        w(2*p,1)=s1(p);
        w(2*p,2)=s2(p);
        w(2*p,3)=s3(p);
        w(2*p,4)=s4(p);
        w(2*p,5)=s5(p);
        d;
        
    else
        t=t+1;
    end   
end

for k=1:120
    if(mod(d-x(k,5),x(k,1))==0 & mod(d-x(k,1),x(k,2))==0 & mod(d-x(k,2),x(k,3))==0 & mod(d-x(k,3),x(k,4))==0 & mod(d-x(k,4),x(k,5))==0)
        q=q+1;
    else
        q=q;
    end   
end
z=zeros(2*q,5);
q=0;
for k=1:120
    if(mod(d-x(k,5),x(k,1))==0 & mod(d-x(k,1),x(k,2))==0 & mod(d-x(k,2),x(k,3))==0 & mod(d-x(k,3),x(k,4))==0 & mod(d-x(k,4),x(k,5))==0)
        q=q+1;
        r1(q)=x(k,1);
        r2(q)=x(k,2);
        r3(q)=x(k,3);
        r4(q)=x(k,4);
        r5(q)=x(k,5);
        s1(q)=(d-x(k,5))/x(k,1);
        s2(q)=(d-x(k,1))/x(k,2);
        s3(q)=(d-x(k,2))/x(k,3);
        s4(q)=(d-x(k,3))/x(k,4);
        s5(q)=(d-x(k,4))/x(k,5);
        z(2*q-1,1)=r1(q);
        z(2*q-1,2)=r2(q);
        z(2*q-1,3)=r3(q);
        z(2*q-1,4)=r4(q);
        z(2*q-1,5)=r5(q);
        z(2*q,1)=s1(q);
        z(2*q,2)=s2(q);
        z(2*q,3)=s3(q);
        z(2*q,4)=s4(q);
        z(2*q,5)=s5(q);
        d;
        
    else
        s=s+1;
    end   
end
if(mod(d,v1)==0 & mod(d,v2)==0 & mod(d,v3)==0 & mod(d,v4)==0 & mod(d,v5)==0)
    disp(' Admit Brieskorn-Pham polynomial')
    B=[v1 v2 v3 v4 v5; d/v1 d/v2 d/v3 d/v4 d/v5];
    fprintf('\n           Weights: (%d,%d,%d,%d,%d)\n',B(1,1),B(1,2),B(1,3),B(1,4),B(1,5))
    fprintf('\n           A BP polynomial is z_{0}^{%d}+z_{1}^{%d}+z_{2}^{%d}+z_{3}^{%d}+z_{4}^{%d}\n\n',B(2,1),B(2,2),B(2,3),B(2,4),B(2,5))
else
    disp(' Does no admit Brieskorn-Pham polynomial')
    fprintf('\n')
end
if t==120
    disp(' Does no admit Chain polynomial');
    fprintf('\n')
else
    disp(' Admit Chain polynomial');
    fprintf('\n           Weights: (%d,%d,%d,%d,%d)\n',w(1,1),w(1,2),w(1,3),w(1,4),w(1,5))
    fprintf('\n           A Chain polynomial is z_{0}^{%d}+z_{0}z_{1}^{%d}+z_{1}z_{2}^{%d}+z_{2}z_{3}^{%d}+z_{3}z_{4}^{%d}\n\n',w(2,1),w(2,2),w(2,3),w(2,4),w(2,5))
end
    
if s==120
    disp(' Does no admit Cycle polynomial');
else
    disp(' Admit polynomial Cycle');
    fprintf('\n         Weights: (%d,%d,%d,%d,%d)\n',z(1,1),z(1,2),z(1,3),z(1,4),z(1,5))
    fprintf('\n A Cycle polynomial is z_{4}z_{0}^{%d}+z_{0}z_{1}^{%d}+z_{1}z_{2}^{%d}+z_{2}z_{3}^{%d}+z_{3}z_{4}^{%d}\n\n',z(2,1),z(2,2),z(2,3),z(2,4),z(2,5))
end
