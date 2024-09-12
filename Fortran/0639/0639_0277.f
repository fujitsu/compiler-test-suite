      DIMENSION  M(100),A(100),B(100)
      COMMON /COM/M,A,B
      M(1) = 1
      M(2) = 2
      DO 10 I=1,100
      B(I) = FLOAT(I*2)
   10 A(I) = FLOAT(I)
      CALL  SUB
      PRINT  *,A
      END
      SUBROUTINE  SUB
      COMMON /COM/M(100),A(100),B(100)
      EQUIVALENCE (M(1),L1),(M(2),L2)
      DO 10 I=1,99
   10 A(L1+I) = B(L2) + B(I)
      RETURN
      END
