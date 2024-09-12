REAL*8 A(10),B(10),C(10),D(10),E(10),F(10)
DATA C/1,2,3,4,5,6,7,8,9,10/
DATA D/10,9,8,7,6,5,4,3,2,1/

DO i=1,10
 A(i)=SIN(C(i))
 B(i)=SIN(D(i))
 E(i)=B(i)
 F(i)=SIN(E(i))
ENDDO
WRITE(6,*)'A1=',A
WRITE(6,*)'B1=',B
WRITE(6,*)'F1=',F

DO i=1,10
 A(i)=SIN(C(i))
 E(i)=A(i)
 B(i)=SIN(D(i))
 F(i)=SIN(A(i))
ENDDO
WRITE(6,*)'A2=',A
WRITE(6,*)'B2=',B
WRITE(6,*)'F2=',F

END

