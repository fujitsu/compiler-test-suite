      PARAMETER (N=10)
      REAL*8 A(N),B(N),X(N),Y(N)
      COMPLEX*16 C(N),Z(N)
      DATA A/N*0.1/,B/N*7.3/,Y/N*5.5/
      DATA C/N*(5.7,-4.2)/

      CALL SUB1(A,B,C,X,Y,Z,N)
      STOP
      END

      SUBROUTINE SUB1(A,B,C,X,Y,Z,N)
      REAL*8 A(N),B(N),X(N),Y(N),XX(10),YY(10)
      COMPLEX*16 C(N),Z(N)

      CHARACTER(LEN=30) :: FMT_REAL
      CHARACTER(LEN=30) :: FMT_COMPLEX
!      FMT_REAL = '(10(F22.14,1X))'
!      FMT_COMPLEX = '(10(F22.14,1X,F22.14,1X))'
      FMT_REAL = '(10(F26.18,1X))'
      FMT_COMPLEX = '(10(F26.18,1X,F26.18,1X))'


      DO 10 I=1,N
       X(I)=B(I)+A(I)
       Z(I)=CDSQRT(C(I))-DCMPLX(X(I))
       YY(I)=A(I)*X(I)+DREAL(Z(I))
       XX(I)=B(I)/Y(I)-DREAL(Z(I))
   10 CONTINUE
      PRINT FMT_REAL, A
      PRINT FMT_REAL, B
      PRINT FMT_COMPLEX, C
      PRINT FMT_REAL, X
      PRINT FMT_REAL, Y
      PRINT FMT_REAL, XX
      PRINT FMT_REAL, YY
      PRINT FMT_COMPLEX, Z
      RETURN
      END
