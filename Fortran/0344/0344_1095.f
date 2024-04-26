      COMPLEX*8 X,B(100),C(100)
      DATA B/100*(1.0,2.0)/,C/100*(3.1,2.1)/
      DO 10 I=1,100
         X = B(I)
         X = X + C(I)
         B(I) = C(I) + FLOAT(I)
         X = X + B(I)
   10 CONTINUE
      WRITE(6,*) X
      STOP
      END
