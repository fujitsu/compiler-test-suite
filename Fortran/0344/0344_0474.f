C
      REAL*4 A(100,100),B(100,100),C(100,100)
      DATA A/10000*0/,B/10000*1/,C/10000*2/
      DO 20 I=1,100
         DO 10 J=1,100
            A(I,J) = B(I,J) + C(I,J)
   10    CONTINUE
   20 CONTINUE
      WRITE(6,99) ((A(I,J),I=1,100),J=1,100)
   99 FORMAT(10F5.1)
      STOP
      END
