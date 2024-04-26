      REAL A(10)/10*1./
      LOGICAL L(10)/10*.FALSE./
      DO 10 I=1,10
       A(I)=2.
       IF(L(I)) GOTO 20
   10 CONTINUE
   20 WRITE(6,1000) A
 1000 FORMAT(10(1X,F7.3))
      STOP
      END
