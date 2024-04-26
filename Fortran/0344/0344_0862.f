      REAL A(10)/10*1./
      LOGICAL L(10)/10*.TRUE./
      DO 10 I=1,20
       IF(I.GT.10) GOTO 20
       IF(I-5) 40,40,30
   30  IF(L(I)) GOTO 20
   40  A(I)=2.
   10 CONTINUE
   20 WRITE(6,1000) A
 1000 FORMAT(10(1X,F7.3))
      STOP
      END
