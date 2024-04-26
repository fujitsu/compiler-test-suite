      REAL*4 I
      DATA I/1*1/
   10 I=I+1
         IF(I.GT.100) GOTO 20
      GOTO 10
   20 WRITE(6,*) I
      STOP
      END
