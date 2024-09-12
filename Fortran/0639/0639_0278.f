      DIMENSION  C(100),A(100),B(101)
      COMMON /COM/C,A,B
      C(1) = 1.
      C(2) = 2.
      B(101)=0.0
      DO 10 I=1,100
      B(I) = FLOAT(I*2)
   10 A(I) = FLOAT(I)
      CALL  SUB
      PRINT  *,A
      END
      SUBROUTINE  SUB
      COMMON /COM/C(100),A(100),B(101)
      EQUIVALENCE (C(1),C1),(C(2),C2)
      DO 10 I=1,100
   10 A(I) = (C1 + B(I)) + (C2 + B(I+1))
      RETURN
      END
