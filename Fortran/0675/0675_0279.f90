REAL*4 A(10,10),M(10,10)
A=0
DO i=1,10
DO j=1,10,i
M(i,j)=j
A(i,j)=SIN(M(i,j))
A(i,j)=COS(M(i,j))
A(j,i)=LOG(M(i,j))
ENDDO
ENDDO
WRITE(6,*)'A=',A
END
