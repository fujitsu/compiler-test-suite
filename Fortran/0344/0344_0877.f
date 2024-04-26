      REAL A(10,10)/100*1./
      DO 10 I=1,10
       N=I
       DO 20 J=1,10
        IF(N.GT.J) GOTO 10
         N=N+1
   20   A(I,J)=N
   10 CONTINUE
      WRITE(6,1000) A
      WRITE(6,1001) N
 1000 FORMAT(10(1X,F7.3))
 1001 FORMAT(I4)
      STOP
      END
