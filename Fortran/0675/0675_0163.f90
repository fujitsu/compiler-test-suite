REAL*8 A(100),C(100),D(100),E(100),F(100)
DO I=1,100
C(I)=I*2
E(I)=I+2
F(I)=I+3
A(I)=SIN(C(I))+COS(C(I))
D(I)=E(I)**F(I)
ENDDO
WRITE(6,*)"A(1)=",A(1)
WRITE(6,*)"D(1)=",D(1)
END