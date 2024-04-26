      REAL*4 A(100),B(100),C(100)
      REAL*4 D(100,10),E(100,10),F(100,10)
      DATA A/100*.0/,B/100*.1/,C/100*.2/,N/100/
      DATA D/1000*.0/,E/1000*.1/,F/1000*.2/,M/10/
      DO 10 I=1,N
         A(I) = B(I) + C(I)
         DO 10 J=1,M
            D(I,J) = E(I,J) + F(I,J)
   10 CONTINUE
      WRITE(6,100) A,B,C
      WRITE(6,100) D,E,F
  100 FORMAT(15F5.1)
C
      STOP
      END
