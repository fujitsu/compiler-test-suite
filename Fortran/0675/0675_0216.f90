REAL*8 A(10),B(10),M(10),J(10)
DO i=1,10
M(i)=i
A(i)=SIN(M(i))
J(i)=i+1
B(i)=SIN(J(i))
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B
END