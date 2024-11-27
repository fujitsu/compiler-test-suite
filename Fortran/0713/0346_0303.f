      DIMENSION A(5),B(5),C(5)
      DATA A,B,C/5*1.0,5*1.0,5*1.0/
      DO 10 I=1,5
        A(I) = -(B(I) + C(I))
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
