REAL*8 A(10,10),B(10),M(10)
A=3
M=3
B=5
DO i=1,10
M(1)=i
A(1,1)=M(1)**M(1)
B(2)=A(1,1)*2+SIN(M(i))
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B
END
