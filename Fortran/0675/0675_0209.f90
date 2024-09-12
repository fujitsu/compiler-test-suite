REAL*8 A(10),B(10),C,M(10),N(10)

k=2

DO i=1,10
C=i
A(i)=C**k
ENDDO
WRITE(6,*)'A=',A

DO i=1,10
M(i)=i
A(i)=M(i)**k
N(i)=i+1
B(i)=M(i)**N(i)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
A(i)=(1.0_8+i)**2
ENDDO
WRITE(6,*)'A=',A

END
