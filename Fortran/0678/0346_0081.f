      DIMENSION A(10),B(10),C(10)
      DATA A,B,C/10*1.0,10*1.0,10*1.0/
      DATA N/10/
      DO 20 J=1,10
        DO 10 I=1,N
          A(I) = B(I) + C(I)
   10   CONTINUE
   20 CONTINUE
      WRITE(6,*) A
      STOP
      END
