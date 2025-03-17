      DIMENSION A(10),B(10,10),C(10,10)
      DATA A,B,C/10*1.0,100*1.0,100*1.0/
      DIMENSION D(10),E(10,10),F(10,10)
      DATA D,E,F/10*1.0,100*1.0,100*1.0/
      N = 10
      DO 30 J=1,10
        DO 10 I=1,N
          A(I) = B(I,J) + C(I,J)
   10   CONTINUE
        DO 20 I=1,N
          D(I) = E(I,J) + F(I,J)
   20   CONTINUE
   30 CONTINUE
      WRITE(6,1000) A
      WRITE(6,1000) D
 1000 FORMAT(' ',10(10F7.2,/))
      STOP
      END
