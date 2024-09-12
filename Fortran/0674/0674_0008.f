      PROGRAM MAIN
      REAL*4 A(10),B(10),C(10)
      DATA A/10*0.0/,B/10*1.0/
      CALL SUB(A,B,C,10)
      PRINT*, A,B,C
      STOP
      END

      SUBROUTINE SUB(A,B,C,N)
      REAL*4 A(N),B(N),C(N)
      DO 10 I=1,N
      C(I) = A(I) + B(I)
 10   A(I) = A(I) * 1.5
      RETURN
      END
