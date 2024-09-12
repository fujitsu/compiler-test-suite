      PROGRAM MAIN
      REAL*8 A(100),B(150),C(100)
      LOGICAL L
      DO 10 I = 1,100
        A(I) = 2 * I -1
   10   C(I) = (I-50)**2
      DO 20 I = 1,150
        B(I) = I * I
        IF( MOD(I,2).EQ.0 ) B(I) = I
   20 CONTINUE
      CALL TEST(A,B,C,.TRUE.)
      STOP
      END
      SUBROUTINE TEST(A,B,C,L)
      REAL*8   A(100),B(150),C(100)
      LOGICAL  L
      DO 30 I = 2,100
        IF( L ) THEN
        C(I) = 1001 / I
        ENDIF
   30 CONTINUE
      B(10) = 1234.238
      DO 10 I = 2,100
        A(I) = B(I-1) / I
   10 CONTINUE
      PRINT*,A,B,C
      RETURN
      END
