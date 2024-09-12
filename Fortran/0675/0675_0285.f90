      REAL*8 A(10,10),B(10),C(10,10),M(100)
      N=0
      B=1
      DO j=1,10
       M(j)=LOG(B(J))
       DO i=1,10
        B(i)=i+N
        A(i,j)=SIN(B(i))+COS(B(i))**B(i)
        N=N+1
        B(i)=j+N+N+B(i)
        C(j,i)=EXP(B(i))+LOG(B(i))
        M(N)=A(i,j)
        M(N)=LOG(B(i))+M(N)*(SIN(B(i))+COS(B(i))**B(i))
       ENDDO
       ENDDO
       WRITE(6,*)'A='
       write(6,9) sum(A)
       WRITE(6,*)'M='
       write(6,9) sum(M)
       WRITE(6,*)'C='
       write(6,9) sum(C)
9      format(E30.15)
       END
