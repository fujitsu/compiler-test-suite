REAL*8 A(10),B(10),C,D

DO i=1,10
C=i
A(i)=C**C
D=i+1
B(i)=D**D
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B
END
