      REAL*4 A(10,10),B(10,10),C(10,10),D(10,10)
      DATA A/100*0/,B/100*2/,C/100*1/,D/100*0/
      DO 20 I=1,10
         DO 10 J=1,10
            A(I,J) = B(I,J) + C(I,J)
            IF (J.GT.5) GOTO 50
   10    CONTINUE
   50    D(I,1) = B(I,1) - C(I,1)
   20 CONTINUE
      WRITE(6,99) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,99) ((D(I,J),I=1,10),J=1,10)
   99 FORMAT(10F5.1)
      STOP
      END
