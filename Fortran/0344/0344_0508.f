      REAL*4 A(10,10),B(10,10),C(10,10),D(10)
      DATA A/100*0/,B/100*1/,C/100*2/,D/10*0/
      DO 10 I=1,10
         DO 20 J=1,10
            A(I,J) = B(I,J) + C(I,J)
            IF (J.GT.5) GOTO 100
   20    CONTINUE
  100 D(I) = D(I) + 1
   10 CONTINUE
      WRITE(6,99) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,99) (D(I),I=1,10)
   99 FORMAT(10F5.1)
      STOP
      END
