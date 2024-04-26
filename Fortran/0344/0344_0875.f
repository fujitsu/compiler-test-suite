      REAL A(10,10)/100*1./
      DO 10 I=1,10
       N=1
       K=5
       DO 20 J=1,10
        IF(K.GT.10) GOTO 30
        A(J,N)=N
   20   N=N+1
   30 K=K+1
   10 CONTINUE
      WRITE(6,1000) A
 1000 FORMAT(10(1X,F7.3))
      STOP
      END
