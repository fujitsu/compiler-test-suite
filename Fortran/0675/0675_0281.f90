REAL*4 A(10,10),B(10),M(100)
N=0
DO j=1,10
DO i=1,10
B(i)=i+N
A(i,j)=SIN(B(i))+COS(B(i))
N=N+1
M(N)=A(i,j)
M(N)=LOG(B(i))+M(N)
ENDDO
ENDDO
WRITE(6,*)'A=',A
WRITE(6,*)'M=',M
END
