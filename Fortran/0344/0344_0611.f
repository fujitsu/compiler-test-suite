      REAL*4 A(10),B(10)
      EQUIVALENCE (A(2),C)
      DATA B/10*1/
      DO 10 I=1,10
        A(I)=B(I)
        A(2)=5.0
 10   CONTINUE
      WRITE(6,1000) C,A
 1000 FORMAT(F10.5)
      STOP
      END
