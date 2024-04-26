      REAL A(10,10)/100*1./
      INTEGER M(10)
      DO 10 I=1,10
       DO 20 J=1,10
       IF(J.EQ.I) GOTO 30
   20  A(I,J)=2.
   30 M(I)=J
   10 CONTINUE
      WRITE(6,1000) A
      WRITE(6,*) M
 1000 FORMAT(10(1X,F7.3))
      STOP
      END
