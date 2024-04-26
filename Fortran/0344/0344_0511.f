      REAL*4 A(10,10),B(10,10),C(10,10),D(10,10)
      DATA A/100*0/,D/100*0/
      DATA B/50*5,15*9,25*6,10*1/
      DATA C/10*3,20*5,30*4,40*8/
      DO 10 I=1,10
         K = 0
         DO 20 WHILE(K.LT.10)
            K = K + 1
            D(I,K) = B(I,K) - C(I,K)
            DO 30 J=1,10
               A(I,J) = B(I,J) + C(I,J)
   30       CONTINUE
   20    CONTINUE
   10 CONTINUE
      WRITE(6,99) ((A(I,J),I=1,10),J=1,10)
      WRITE(6,99) ((D(I,K),I=1,10),K=1,10)
   99 FORMAT(10F5.1)
      STOP
      END
