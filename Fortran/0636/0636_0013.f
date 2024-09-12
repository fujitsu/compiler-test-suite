      PROGRAM MAIN
      REAL*8 A(100),B(50),C(100)
      LOGICAL L
      DO 10 I = 1,100
        A(I) = 2 * I -1
   10   C(I) = (I-50)**2
      DO 20 I = 1,50
        B(I) = I * I
        IF( MOD(I,2).EQ.0 ) B(I) = I
   20 CONTINUE
      CALL TEST(A,B,C,.TRUE.)
      STOP
      END
      SUBROUTINE TEST(A,B,C,L)
      REAL*8   A(100),B(50),C(100)
      LOGICAL  L
      DO 10 I = 1,100
        A(I) = I * I
   10 CONTINUE
      DO 20 I = 2,50
        B(I) = A(I-1) + 1
   20 CONTINUE
      DO 30 I = 1,100
        IF( L ) THEN
        C(I) = 1 / I
        ENDIF
   30 CONTINUE
      PRINT*,A,B,C
      RETURN
      END
