REAL*8 A(10),B(10)/10*0/,M
A=3
DO i=1,10,2
M=i
A(1)=M**M
B(i)=A(1)*2+SIN(M)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B
END
