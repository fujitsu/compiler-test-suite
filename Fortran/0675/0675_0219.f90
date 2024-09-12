REAL*8 A(10),B(10)
DO i=1,10
A(i)=SIN(1.0_8+i)
B(i)=SIN(5.0_8+i)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B
END
