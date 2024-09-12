      PROGRAM MAIN
      PARAMETER(N=10)
      REAL*8 A(N),B(10),C(10)
      LOGICAL M(N)
      DATA M/N*.TRUE./
      CALL SUB(A,M,N)
      STOP
      END

      SUBROUTINE SUB(A,M,N)
      REAL*8 A(N),B(10),C(10)
      LOGICAL M(N)
      DO 100 I=1,N
      IF(M(I)) THEN
       A(I)=1.0
      ENDIF
      B(I)=I
      C(I)=B(I)
  100 CONTINUE
      PRINT *,A
      STOP
      END
