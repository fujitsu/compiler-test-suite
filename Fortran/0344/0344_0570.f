      INTEGER N/10/
      REAL AA(10,10)/100*0.1/
      CALL SUB(AA,N)
      WRITE(6,*) AA
      STOP
      END
C
      SUBROUTINE SUB(AA,N)
      INTEGER N
      REAL AA(N,*)
      DO 10 J = 1,N
        DO 10 K = 1,J-1
          DO 10 I = K+1,N
   10 AA(I,J)=AA(I,J)+AA(I,K)*AA(K,J)
      RETURN
      END
