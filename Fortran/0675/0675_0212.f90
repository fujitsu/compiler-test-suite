REAL*8 A(10),B(10),C,M(10)

DO i=1,10
C=i
A(i)=SIN(C)
B(i)=COS(C)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
M(i)=i
A(i)=SIN(M(i))
B(i)=COS(M(i))
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
A(i)=SIN(1.0_8+i)
B(i)=COS(1.0_8+i)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

END
