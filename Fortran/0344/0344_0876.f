      REAL A(10,10)/100*1./
      N=1
      DO 10 I=1,10
       DO 20 J=1,10
        IF(N.LT.J) GOTO 30
   20   A(I,J)=N
   30  N=N+1
   10 CONTINUE
      WRITE(6,1000) A
 1000 FORMAT(10(1X,F7.3))
      STOP
      END
