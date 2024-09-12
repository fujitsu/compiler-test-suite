REAL*8 A(10),B(10),C,D,M(10),J(10)

DO i=1,10
C=i
A(i)=COS(C)
D=i+1
B(i)=COS(D)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
M(i)=i
A(i)=COS(M(i))
J(i)=i+1
B(i)=COS(J(i))
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
A(i)=COS(1.0_8+i)
B(i)=COS(5.0_8+i)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

END
