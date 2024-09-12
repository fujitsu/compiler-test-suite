REAL*8 A(10,10),M(10,10)
DO i=1,10
DO j=1,10
M(i,j)=j
A(i,j)=SIN(M(i,j))*COS(M(i,j))
ENDDO
ENDDO
WRITE(6,*)'A=',A
END
