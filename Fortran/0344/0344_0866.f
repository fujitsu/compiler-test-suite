      INTEGER*2 IN(10)/10*1./
      LOGICAL L(10)/10*.FALSE./
      DO 10 I=1,10
       IF(L(I)) GOTO 20
       IN(I)=2
   10 CONTINUE
   20 WRITE(6,*) IN
      STOP
      END
