REAL*8 A(10),B(10),M(10)
A=3
DO i=1,10
M(i)=i
A(1)=M(i)**M(i)
B(i)=A(1)+SIN(M(i))
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B
END
