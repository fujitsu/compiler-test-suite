      REAL*4 A(10,10),B(10,10),C(10,10),D(10,10),X(10,10)
      DATA A/100*0/,D/100*0/,X/100*0/
      DATA B/10*5,25*8,35*6,25*3,5*7/
      DATA C/15*4,40*3,25*5,20*2/
      DO 10 I=1,10
         DO 20 J=1,10
            DO 50 L=1,10
               X(I,L) = B(I,L) + C(I,L)
   50       CONTINUE
            A(I,J) = B(I,J) * C(I,J) - X(I,J)
   20    CONTINUE
         DO 10 K=1,10
            D(I,K) = B(I,K) - C(I,K)
   10 CONTINUE
      WRITE(6,99) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,99) ((D(I,J),I=1,10),J=1,10)
      WRITE(6,99) ((X(I,J),I=1,10),J=1,10)
   99 FORMAT(10F5.1)
      STOP
      END
