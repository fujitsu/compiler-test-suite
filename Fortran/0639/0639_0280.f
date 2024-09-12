      DIMENSION  C(2,100),A(100),B(101)
      COMMON /COM/C,A,B
      DO 10 I=1,100
      C(1,I) = FLOAT(I)
      C(2,I) = FLOAT(I) + 100.
      B(I) = FLOAT(I*2)
   10 A(I) = FLOAT(I)
      B(101) = 0.
      CALL  SUB
      PRINT  *,A
      END
      SUBROUTINE  SUB
      COMMON /COM/C(2,100),A(100),B(101)
      DIMENSION C1(100),C2(100)
      EQUIVALENCE (C(1,1),C1(1)),(C(2,1),C2(1))
      DO 10 I=1,100
      S1 = C(1,I)
      S2 = C(2,I)
   10 A(I) = (S1 + B(I)) + (S2 + B(I+1))
      RETURN
      END
