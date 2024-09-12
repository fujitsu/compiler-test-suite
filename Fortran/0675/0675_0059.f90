REAL*8 A(10,10),B(10,10),C,D,M(10,10),N(10,10)

DO i=1,10
DO j=1,10
C=j
A(i,j)=C**C
D=j+i
B(i,j)=D**D
ENDDO
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
DO j=1,10
M(i,j)=j
A(i,j)=M(i,j)**M(i,j)
N(i,j)=j+1
B(i,j)=N(i,j)**N(i,j)
ENDDO
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
DO j=1,10
A(i,j)=(2.0_8+j)**(3.0_8+j)
B(i,j)=(4.0_8+j)**(2.0_8+j)
ENDDO
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B
END
