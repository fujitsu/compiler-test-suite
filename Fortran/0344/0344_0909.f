      REAL A(10)/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./,S/0./
      DO 10 I=1,10
       DO 20 J=1,10
        IF(I.EQ.1) GOTO 10
        IF(J.EQ.5) GOTO 10
   20    A(J)=A(J)-I
   10 S=S+A(I)
   30  WRITE(6,1000) A,S
 1000 FORMAT(10(1X,F7.3))
      STOP
      END
