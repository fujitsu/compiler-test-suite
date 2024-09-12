REAL*8 A(10),B(10),C,D,M(10),J(10)

DO i=1,10
C=i
A(i)=C**C
D=i+1
B(i)=D**D
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
M(i)=i
A(i)=M(i)**M(i)
J(i)=i+1
B(i)=J(i)**J(i)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

DO i=1,10
A(i)=(2.0_8+i)**(3.0_8+i)
B(i)=(4.0_8+i)**(2.0_8+i)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B

END
