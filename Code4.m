w1=input('Type the first weight: ');
w2=input('Type the second weight: ');
w3=input('Type the third weight: ');
w4=input('Type the fourth weight: ');
w5=input('Type the fifth weight: ');
W=[w1 w2 w3 w4 w5];
p=sym(w1)*w2*w3*w4*w5;
d=w1+w2+w3+w4+w5-1;
format long
for i=1:5
    U(i)=d/gcd(d,W(i));
    V(i)=W(i)/gcd(d,W(i));
end
r1=d-w1;
r2=d-w2;
r3=d-w3;
r4=d-w4;
r5=d-w5;
u=sym(r1)*r2*r3*r4*r5/p;
R1=[1;2;3;4;5];
R2=[1 2; 1 3; 1 4; 1 5; 2 3; 2 4; 2 5; 3 4; 3 5; 4 5];
R3=[1 2 3; 1 2 4; 1 2 5; 1 3 4; 1 3 5; 1 4 5; 2 3 4; 2 3 5; 2 4 5; 3 4 5];
R4=[1 2 3 4; 1 2 3 5 ; 1 2 4 5; 1 3 4 5; 2 3 4 5 ];
R5=[ 1 2 3 4 5];

S0=sym(V(1))*V(2)*V(3)*V(4)*V(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
S1=sym(V(2))*V(3)*V(4)*V(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
S2=sym(V(1))*V(3)*V(4)*V(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
S3=sym(V(1))*V(2)*V(4)*V(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
S4=sym(V(1))*V(2)*V(3)*V(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
S5=sym(V(1))*V(2)*V(3)*V(4)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
Q1=sym(U(1))*U(2)*V(3)*V(4)*V(5)*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
Q2=sym(U(1))*V(2)*U(3)*V(4)*V(5)*lcm(U(1),U(2))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
Q3=sym(U(1))*V(2)*V(3)*U(4)*V(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
Q4=sym(U(1))*V(2)*V(3)*V(4)*U(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
Q5=sym(V(1))*U(2)*U(3)*V(4)*V(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
Q6=sym(V(1))*U(2)*V(3)*U(4)*V(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
Q7=sym(V(1))*U(2)*V(3)*V(4)*U(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
Q8=sym(V(1))*V(2)*U(3)*U(4)*V(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
Q9=sym(V(1))*V(2)*U(3)*V(4)*U(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
Q10=sym(V(1))*V(2)*V(3)*U(4)*U(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
P1=sym(U(1))*U(2)*U(3)*V(4)*V(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
P2=sym(U(1))*U(2)*V(3)*U(4)*V(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
P3=sym(U(1))*U(2)*V(3)*V(4)*U(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
P4=sym(U(1))*V(2)*U(3)*U(4)*V(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
P5=sym(U(1))*V(2)*U(3)*V(4)*U(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
P6=sym(U(1))*V(2)*V(3)*U(4)*U(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
P7=sym(V(1))*U(2)*U(3)*U(4)*V(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
P8=sym(V(1))*U(2)*U(3)*V(4)*U(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
P9=sym(V(1))*U(2)*V(3)*U(4)*U(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
P10=sym(V(1))*V(2)*U(3)*U(4)*U(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
T1=sym(U(1))*U(2)*U(3)*U(4)*V(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
T2=sym(U(1))*U(2)*U(3)*V(4)*U(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
T3=sym(U(1))*U(2)*V(3)*U(4)*U(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
T4=sym(U(1))*V(2)*U(3)*U(4)*U(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
T5=sym(V(1))*U(2)*U(3)*U(4)*U(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(1),lcm(U(2),lcm(U(3),lcm(U(4),U(5)))));
T6=sym(U(1))*U(2)*U(3)*U(4)*U(5)*lcm(U(1),U(2))*lcm(U(1),U(3))*lcm(U(1),U(4))*lcm(U(1),U(5))*lcm(U(2),U(3))*lcm(U(2),U(4))*lcm(U(2),U(5))*lcm(U(3),U(4))*lcm(U(3),U(5))*lcm(U(4),U(5))*lcm(U(1),lcm(U(2),U(3)))*lcm(U(1),lcm(U(2),U(4)))*lcm(U(1),lcm(U(2),U(5)))*lcm(U(1),lcm(U(3),U(4)))*lcm(U(1),lcm(U(3),U(5)))*lcm(U(1),lcm(U(4),U(5)))*lcm(U(2),lcm(U(3),U(4)))*lcm(U(2),lcm(U(3),U(5)))*lcm(U(2),lcm(U(4),U(5)))*lcm(U(3),lcm(U(4),U(5)))*lcm(U(1),lcm(U(2),lcm(U(3),U(4))))*lcm(U(1),lcm(U(2),lcm(U(3),U(5))))*lcm(U(1),lcm(U(2),lcm(U(4),U(5))))*lcm(U(1),lcm(U(3),lcm(U(4),U(5))))*lcm(U(2),lcm(U(3),lcm(U(4),U(5))));
S=(-S0+S1+S2+S3+S4+S5-Q1-Q2-Q3-Q4-Q5-Q6-Q7-Q8-Q9-Q10+P1+P2+P3+P4+P5+P6+P7+P8+P9+P10-T1-T2-T3-T4-T5+T6)/S0;
C2=zeros(4,5);
C3=zeros(3,4,5);
C4=zeros(5,5,5,5);
K2=zeros(5,5);
K4=zeros(5,5,5,5);
C0=gcd(U(1),gcd(U(2),gcd(U(3),gcd(U(4),U(5)))));
C1(1)=gcd(U(2),gcd(U(3),gcd(U(4),U(5))))/C0;
C1(2)=gcd(U(1),gcd(U(3),gcd(U(4),U(5))))/C0;
C1(3)=gcd(U(2),gcd(U(1),gcd(U(4),U(5))))/C0;
C1(4)=gcd(U(2),gcd(U(1),gcd(U(3),U(5))))/C0;
C1(5)=gcd(U(2),gcd(U(1),gcd(U(4),U(3))))/C0;
C2(1,2)=gcd(U(3),gcd(U(4),U(5)))/(C0*C1(1)*C1(2));
C2(1,3)=gcd(U(2),gcd(U(4),U(5)))/(C0*C1(1)*C1(3));
C2(1,4)=gcd(U(3),gcd(U(2),U(5)))/(C0*C1(1)*C1(4));
C2(1,5)=gcd(U(3),gcd(U(4),U(2)))/(C0*C1(1)*C1(5));
C2(2,3)=gcd(U(1),gcd(U(4),U(5)))/(C0*C1(2)*C1(3));
C2(2,4)=gcd(U(1),gcd(U(3),U(5)))/(C0*C1(2)*C1(4));
C2(2,5)=gcd(U(1),gcd(U(4),U(3)))/(C0*C1(2)*C1(5));
C2(3,4)=gcd(U(1),gcd(U(2),U(5)))/(C0*C1(3)*C1(4));
C2(3,5)=gcd(U(1),gcd(U(4),U(2)))/(C0*C1(3)*C1(5));
C2(4,5)=gcd(U(1),gcd(U(2),U(3)))/(C0*C1(4)*C1(5));
C3(1,2,3)=gcd(U(4),U(5))/(C0*C1(1)*C1(2)*C1(3)*C2(1,2)*C2(1,3)*C2(2,3));
C3(1,2,4)=gcd(U(3),U(5))/(C0*C1(1)*C1(2)*C1(4)*C2(1,2)*C2(1,4)*C2(2,4));
C3(1,2,5)=gcd(U(3),U(4))/(C0*C1(1)*C1(2)*C1(5)*C2(1,2)*C2(1,5)*C2(2,5));
C3(1,3,4)=gcd(U(2),U(5))/(C0*C1(1)*C1(3)*C1(4)*C2(1,3)*C2(1,4)*C2(3,4));
C3(1,3,5)=gcd(U(2),U(4))/(C0*C1(1)*C1(3)*C1(5)*C2(1,3)*C2(1,5)*C2(3,5));
C3(1,4,5)=gcd(U(2),U(3))/(C0*C1(1)*C1(4)*C1(5)*C2(1,4)*C2(1,5)*C2(4,5));
C3(2,3,4)=gcd(U(1),U(5))/(C0*C1(2)*C1(3)*C1(4)*C2(2,3)*C2(2,4)*C2(3,4));
C3(2,3,5)=gcd(U(1),U(4))/(C0*C1(2)*C1(3)*C1(5)*C2(2,3)*C2(2,5)*C2(3,5));
C3(2,4,5)=gcd(U(1),U(3))/(C0*C1(2)*C1(4)*C1(5)*C2(2,4)*C2(2,5)*C2(4,5));
C3(3,4,5)=gcd(U(1),U(2))/(C0*C1(3)*C1(4)*C1(5)*C2(3,4)*C2(3,5)*C2(4,5));
C4(1,2,3,4)=U(5)/(sym(C0)*C1(1)*C1(2)*C1(3)*C1(4)*C2(1,2)*C2(1,3)*C2(1,4)*C2(2,3)*C2(2,4)*C2(3,4)*C3(1,2,3)*C3(1,2,4)*C3(1,3,4)*C3(2,3,4));
C4(1,2,3,5)=U(4)/(sym(C0)*C1(1)*C1(2)*C1(3)*C1(5)*C2(1,2)*C2(1,3)*C2(1,5)*C2(2,3)*C2(2,5)*C2(3,5)*C3(1,2,3)*C3(1,2,5)*C3(1,3,5)*C3(2,3,5));
C4(1,2,4,5)=U(3)/(sym(C0)*C1(1)*C1(2)*C1(4)*C1(5)*C2(1,2)*C2(1,4)*C2(1,5)*C2(2,4)*C2(2,5)*C2(4,5)*C3(1,2,4)*C3(1,2,5)*C3(1,4,5)*C3(2,4,5));
C4(1,3,4,5)=U(2)/(sym(C0)*C1(1)*C1(3)*C1(4)*C1(5)*C2(1,3)*C2(1,4)*C2(1,5)*C2(3,4)*C2(3,5)*C2(4,5)*C3(1,3,4)*C3(1,3,5)*C3(1,4,5)*C3(3,4,5));
C4(2,3,4,5)=U(1)/(sym(C0)*C1(2)*C1(3)*C1(4)*C1(5)*C2(2,3)*C2(2,4)*C2(2,5)*C2(3,4)*C2(3,5)*C2(4,5)*C3(2,3,4)*C3(2,3,5)*C3(2,4,5)*C3(3,4,5));
K0=1;
for i=1:5
    for j=2:5
        K2(i,j)=(sym(V(i))*V(j)*lcm(U(i),U(j))-V(j)*lcm(U(i),U(j))-V(i)*lcm(U(i),U(j))+U(i)*U(j))/(V(i)*V(j)*lcm(U(i),U(j)));
    end
end
for i=1:5
    for j=2:5
        for k=3:5
            for l=4:5
                A=sym(V(i))*V(j)*V(k)*V(l)*lcm(U(i),U(j))*lcm(U(i),U(k))*lcm(U(i),U(l))*lcm(U(j),U(k))*lcm(U(j),U(l))*lcm(U(k),U(l))*lcm(U(i),lcm(U(j),U(k)))*lcm(U(i),lcm(U(j),U(l)))*lcm(U(i),lcm(U(k),U(l)))*lcm(U(j),lcm(U(k),U(l)))*lcm(U(i),lcm(U(j),lcm(U(k),U(l))));
                A1=sym(V(j))*V(k)*V(l)*lcm(U(i),U(j))*lcm(U(i),U(k))*lcm(U(i),U(l))*lcm(U(j),U(k))*lcm(U(j),U(l))*lcm(U(k),U(l))*lcm(U(i),lcm(U(j),U(k)))*lcm(U(i),lcm(U(j),U(l)))*lcm(U(i),lcm(U(k),U(l)))*lcm(U(j),lcm(U(k),U(l)))*lcm(U(i),lcm(U(j),lcm(U(k),U(l))));
                A2=sym(V(i))*V(k)*V(l)*lcm(U(i),U(j))*lcm(U(i),U(k))*lcm(U(i),U(l))*lcm(U(j),U(k))*lcm(U(j),U(l))*lcm(U(k),U(l))*lcm(U(i),lcm(U(j),U(k)))*lcm(U(i),lcm(U(j),U(l)))*lcm(U(i),lcm(U(k),U(l)))*lcm(U(j),lcm(U(k),U(l)))*lcm(U(i),lcm(U(j),lcm(U(k),U(l))));
                A3=sym(V(i))*V(j)*V(l)*lcm(U(i),U(j))*lcm(U(i),U(k))*lcm(U(i),U(l))*lcm(U(j),U(k))*lcm(U(j),U(l))*lcm(U(k),U(l))*lcm(U(i),lcm(U(j),U(k)))*lcm(U(i),lcm(U(j),U(l)))*lcm(U(i),lcm(U(k),U(l)))*lcm(U(j),lcm(U(k),U(l)))*lcm(U(i),lcm(U(j),lcm(U(k),U(l))));
                A4=sym(V(i))*V(j)*V(k)*lcm(U(i),U(j))*lcm(U(i),U(k))*lcm(U(i),U(l))*lcm(U(j),U(k))*lcm(U(j),U(l))*lcm(U(k),U(l))*lcm(U(i),lcm(U(j),U(k)))*lcm(U(i),lcm(U(j),U(l)))*lcm(U(i),lcm(U(k),U(l)))*lcm(U(j),lcm(U(k),U(l)))*lcm(U(i),lcm(U(j),lcm(U(k),U(l))));
                B1=sym(U(i))*U(j)*V(k)*V(l)*lcm(U(i),U(k))*lcm(U(i),U(l))*lcm(U(j),U(k))*lcm(U(j),U(l))*lcm(U(k),U(l))*lcm(U(i),lcm(U(j),U(k)))*lcm(U(i),lcm(U(j),U(l)))*lcm(U(i),lcm(U(k),U(l)))*lcm(U(j),lcm(U(k),U(l)))*lcm(U(i),lcm(U(j),lcm(U(k),U(l))));
                B2=sym(U(i))*V(j)*U(k)*V(l)*lcm(U(i),U(j))*lcm(U(i),U(l))*lcm(U(j),U(k))*lcm(U(j),U(l))*lcm(U(k),U(l))*lcm(U(i),lcm(U(j),U(k)))*lcm(U(i),lcm(U(j),U(l)))*lcm(U(i),lcm(U(k),U(l)))*lcm(U(j),lcm(U(k),U(l)))*lcm(U(i),lcm(U(j),lcm(U(k),U(l))));
                B3=sym(U(i))*V(j)*V(k)*U(l)*lcm(U(i),U(j))*lcm(U(i),U(k))*lcm(U(j),U(k))*lcm(U(j),U(l))*lcm(U(k),U(l))*lcm(U(i),lcm(U(j),U(k)))*lcm(U(i),lcm(U(j),U(l)))*lcm(U(i),lcm(U(k),U(l)))*lcm(U(j),lcm(U(k),U(l)))*lcm(U(i),lcm(U(j),lcm(U(k),U(l))));
                B4=sym(V(i))*U(j)*U(k)*V(l)*lcm(U(i),U(j))*lcm(U(i),U(k))*lcm(U(i),U(l))*lcm(U(j),U(l))*lcm(U(k),U(l))*lcm(U(i),lcm(U(j),U(k)))*lcm(U(i),lcm(U(j),U(l)))*lcm(U(i),lcm(U(k),U(l)))*lcm(U(j),lcm(U(k),U(l)))*lcm(U(i),lcm(U(j),lcm(U(k),U(l))));
                B5=sym(V(i))*U(j)*V(k)*U(l)*lcm(U(i),U(j))*lcm(U(i),U(k))*lcm(U(i),U(l))*lcm(U(j),U(k))*lcm(U(k),U(l))*lcm(U(i),lcm(U(j),U(k)))*lcm(U(i),lcm(U(j),U(l)))*lcm(U(i),lcm(U(k),U(l)))*lcm(U(j),lcm(U(k),U(l)))*lcm(U(i),lcm(U(j),lcm(U(k),U(l))));
                B6=sym(V(i))*V(j)*U(k)*U(l)*lcm(U(i),U(j))*lcm(U(i),U(k))*lcm(U(i),U(l))*lcm(U(j),U(k))*lcm(U(j),U(l))*lcm(U(i),lcm(U(j),U(k)))*lcm(U(i),lcm(U(j),U(l)))*lcm(U(i),lcm(U(k),U(l)))*lcm(U(j),lcm(U(k),U(l)))*lcm(U(i),lcm(U(j),lcm(U(k),U(l))));
                D1=sym(U(i))*U(j)*U(k)*V(l)*lcm(U(i),U(j))*lcm(U(i),U(k))*lcm(U(i),U(l))*lcm(U(j),U(k))*lcm(U(j),U(l))*lcm(U(k),U(l))*lcm(U(i),lcm(U(j),U(l)))*lcm(U(i),lcm(U(k),U(l)))*lcm(U(j),lcm(U(k),U(l)))*lcm(U(i),lcm(U(j),lcm(U(k),U(l))));
                D2=sym(U(i))*U(j)*V(k)*U(l)*lcm(U(i),U(j))*lcm(U(i),U(k))*lcm(U(i),U(l))*lcm(U(j),U(k))*lcm(U(j),U(l))*lcm(U(k),U(l))*lcm(U(i),lcm(U(j),U(k)))*lcm(U(i),lcm(U(k),U(l)))*lcm(U(j),lcm(U(k),U(l)))*lcm(U(i),lcm(U(j),lcm(U(k),U(l))));
                D3=sym(U(i))*V(j)*U(k)*U(l)*lcm(U(i),U(j))*lcm(U(i),U(k))*lcm(U(i),U(l))*lcm(U(j),U(k))*lcm(U(j),U(l))*lcm(U(k),U(l))*lcm(U(i),lcm(U(j),U(k)))*lcm(U(i),lcm(U(j),U(l)))*lcm(U(j),lcm(U(k),U(l)))*lcm(U(i),lcm(U(j),lcm(U(k),U(l))));
                D4=sym(V(i))*U(j)*U(k)*U(l)*lcm(U(i),U(j))*lcm(U(i),U(k))*lcm(U(i),U(l))*lcm(U(j),U(k))*lcm(U(j),U(l))*lcm(U(k),U(l))*lcm(U(i),lcm(U(j),U(k)))*lcm(U(i),lcm(U(j),U(l)))*lcm(U(i),lcm(U(k),U(l)))*lcm(U(i),lcm(U(j),lcm(U(k),U(l))));
                E1=sym(U(i))*U(j)*U(k)*U(l)*lcm(U(i),U(j))*lcm(U(i),U(k))*lcm(U(i),U(l))*lcm(U(j),U(k))*lcm(U(j),U(l))*lcm(U(k),U(l))*lcm(U(i),lcm(U(j),U(k)))*lcm(U(i),lcm(U(j),U(l)))*lcm(U(i),lcm(U(k),U(l)))*lcm(U(j),lcm(U(k),U(l)));
                K4(i,j,k,l)=(A-A1-A2-A3-A4+B1+B2+B3+B4+B5+B6-D1-D2-D3-D4+E1)/A;
            end
        end
    end
end

R=[floor(K0) floor(K2(1,2)) floor(K2(1,3)) floor(K2(1,4)) floor(K2(1,5)) floor(K2(2,3)) floor(K2(2,4)) floor(K2(2,5)) floor(K2(3,4)) floor(K2(3,5)) floor(K2(4,5)) floor(K4(1,2,3,4)) floor(K4(1,2,3,5)) floor(K4(1,2,4,5)) floor(K4(1,3,4,5)) floor(K4(2,3,4,5))];
T=[C0 C2(1,2) C2(1,3) C2(1,4) C2(1,5) C2(2,3) C2(2,4) C2(2,5) C2(3,4) C2(3,5) C2(4,5) C4(1,2,3,4) C4(1,2,3,5) C4(1,2,4,5) C4(1,3,4,5) C4(2,3,4,5)];
rmax=max(R);
D=ones(1,rmax);
for j=1:rmax
    for i=1:16
        if(R(i)>=j)
            D(j)=T(i)*D(j);
        end
    end
end
W;

fprintf('\n The degree is %d \n\n',d)

fprintf('The Milnor number is %d \n\n',u)  

fprintf('The third Betti number is %d \n\n',S) 

fprintf('The numbers d_{i} that define the torsion are given by: \n') 
D