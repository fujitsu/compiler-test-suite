REAL*8 A(10,10),B(10,10),C,D,M(10,10),N(10,10)

DO i=1,10
DO j=1,10
C=i+j
A(j,i)=C**C
D=j*3
B(i,j)=D**D
ENDDO
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
DO j=1,10
M(i,j)=j*i
A(i,j)=M(i,j)**M(i,j)
N(i,j)=j+3*i
B(i,j)=N(i,j)**N(i,j)
ENDDO
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
DO j=1,10
A(i,j)=(5.0_8+i)**(8.0_8+i)
B(i,j)=(6.0_8+j)**(2.0_8+j)
ENDDO
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B
END
