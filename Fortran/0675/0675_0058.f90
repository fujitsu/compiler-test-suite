REAL*8 A(10),B(10)

DO i=1,10
A(i)=(2.0_8+i)**(3.0_8+i)
B(i)=(4.0_8+i)**(2.0_8+i)
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'B=',B
END
