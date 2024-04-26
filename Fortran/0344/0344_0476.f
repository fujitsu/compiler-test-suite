      REAL*4 A(100),B(100),C(100),D(100)
      INTEGER K
      DATA A/100*0/,B/100*1/,C/100*2/,D/100*0/
      DO 20 J=1,100
         DO 10 I=1,100
            K = 0
    1       K = K + 1
            A(K) = B(K) + C(K)
            IF(K.NE.100) GOTO 1
            A(I) = A(I) + I
   10    CONTINUE
         D(J) = B(J) + C(J)
   20 CONTINUE
      WRITE(6,99) (A(I),I=1,100)
      WRITE(6,99) (D(I),I=1,100)
   99 FORMAT(10F5.1)
      STOP
      END
