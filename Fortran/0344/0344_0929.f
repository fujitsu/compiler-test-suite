      REAL*4 A(100,100),B(100,100),C(100,100)
      DATA A/10000*.0/,B/10000*.1/,C/10000*.2/
      DO 10 I=1,100
         DO 20 J=1,100
            A(I,J) = B(I,J) + C(I,J)
   20    CONTINUE
   10 CONTINUE
      WRITE(6,100) A,B,C
  100 FORMAT(15F5.1)
C
      STOP
      END
