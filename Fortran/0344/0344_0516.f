      REAL*4 A(100,100),B(100),C(100),D(100,100)
      DATA A/10000*0/,B/100*5/,C/100*2/,D/10000*0/
C
      DO 100 K=1,100
C
         DO 10 I=1,100
            A(I,K) = B(I) + C(I)
   10    CONTINUE
C
         DO 20 J=1,100
            D(J,K) = B(J) - C(J)
   20    CONTINUE
C
  100 CONTINUE
C
      WRITE(6,99) ((A(I,J),I=1,100),J=1,100)
      WRITE(6,99) ((D(I,J),I=1,100),J=1,100)
   99 FORMAT(10F5.1)
      STOP
      END
