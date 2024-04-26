      INTEGER N
      N=500
       CALL DOB(N)
      N=1000
       CALL DOB(N)
      N=2000
       CALL DOB(N)
      N=5000
       CALL DOB(N)
      STOP
      END

      SUBROUTINE DOB(N)
      INTEGER N,M(5000)
      LOGICAL L(5000)/5000*.FALSE./
      K = 1
      M = (/(i,i=1,5000)/)
      DO 10 I=1,N
       M(I)=I
       L(N+1-I)=.TRUE.
        DO 20 J=1,N
         IF(L(J)) GOTO 30
          K=M(J)
   20   CONTINUE
   30  M(I)=K
   10 CONTINUE
      WRITE(6,*) 'N=',N
      WRITE(6,1000) (M(I),I=1,N,50)
 1000 FORMAT(10(1X,I7))
      return
      END
