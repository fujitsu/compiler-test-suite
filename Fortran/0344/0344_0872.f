      REAL A(10,10)/100*1./
      DO 10 I=1,10
       N=1
       K=10
       DO 20 J=1,10
       IF(N.GT.10 .OR. K.GT.10) GOTO 10
        A(N,K)=J
        N=N+1
   20   K=K-1
   10 CONTINUE
      WRITE(6,1000) A
      WRITE(6,1001) N
      WRITE(6,1001) K
 1000 FORMAT(10(1X,F7.3))
 1001 FORMAT(I4)
      STOP
      END
