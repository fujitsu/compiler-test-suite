      REAL A(10,10)/100*1./
      DO 10 I=1,10
       N=I
       DO 20 J=1,10
       IF(N.GT.10) GOTO 10
       A(N,J)=2.
   20  N=N+1
   10 CONTINUE
      WRITE(6,1000) A
 1000 FORMAT(10(1X,F7.3))
      STOP
      END
