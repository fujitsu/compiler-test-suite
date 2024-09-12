
REAL*8 A(10),B(10),C(10),D(10),E(10),F(10)

DO i=1,10
 C(i)=i
 D(i)=i+1
 A(i)=SIN(C(i))+SIN(D(i))
 E(i)=i+2
 F(i)=i+3
 B(i)=SIN(E(i))+SIN(F(i))-SIN(A(i))
ENDDO
WRITE(6,*)'A3=',A
WRITE(6,*)'B3=',B
END
