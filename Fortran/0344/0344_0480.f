      REAL*4 A(100),B(100),C(100)
      DATA A/100*0/,B/100*1/,C/100*2/
C
      I = 0
      DO 10 WHILE(I.LT.100)
         I = I + 1
         A(I) = B(I) + C(I)
   10 CONTINUE
C
      WRITE(6,99) (A(I),I=1,100)
   99 FORMAT(10F5.1)
      STOP
      END
