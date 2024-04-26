      DIMENSION A(10,10),B(10),C(10)
      DATA A,B,C/100*1.0,10*1.0,10*1.0/
      N = 10
      DO 20 J=1,10
        DO 10 I=1,N
          A(I,J) = B(I) + C(I)
   10   CONTINUE
   20 CONTINUE
      WRITE(6,1000) A
 1000 FORMAT(' ',10(10F7.2,/' '))
      STOP
      END
