      REAL*4 A(100),B(100),C(100)
      DATA A/100*0/,B/100*1/,C/100*2/
      DO 10 I=1,100
         A(I) = B(I) + C(I)
   10 CONTINUE
      WRITE(6,99) (A(I),I=1,100)
   99 FORMAT(10F5.1)
      STOP
      END
