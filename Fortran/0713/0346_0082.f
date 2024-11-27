      DIMENSION A(10,10),B(10),C(10)
      DATA A,B,C/100*1.0,10*1.0,10*1.0/
      DIMENSION D(10,10),E(10),F(10)
      DATA D,E,F/100*1.0,10*1.0,10*1.0/
      N = 10
      DO 30 J=1,10
        DO 10 I=1,N
          A(I,J) = B(I) + C(I)
   10   CONTINUE
        DO 20 I=1,N
          D(I,J) = E(I) + F(I)
   20   CONTINUE
   30 CONTINUE
      WRITE(6,1000) A
      WRITE(6,1000) D
 1000 FORMAT(' ',10(10F7.2,/))
      STOP
      END
