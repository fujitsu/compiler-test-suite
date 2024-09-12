REAL*8 A(100),B(100),C(100),D(100),E(100),F(100),G(100)
DATA C/100*1/
DATA E/100*2/
DO I=1,100
G(I)=C(I)**E(I)
A(I)=SIN(C(I))
B(I)=COS(C(I))
D(I)=SIN(E(I))
E(I)=COS(E(I))
F(I)=B(I)**C(I)
ENDDO
WRITE(6,*)"A(1)=",A(1)
WRITE(6,*)"B(1)=",B(1)
WRITE(6,*)"D(1)=",D(1)
WRITE(6,*)"E(1)=",E(1)
WRITE(6,*)"F(1)=",F(1)
WRITE(6,*)"G(1)=",G(1)
END
