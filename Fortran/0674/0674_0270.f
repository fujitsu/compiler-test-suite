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
      DO 10 I=1,N
       X(I)=B(I)+A(I)
       Z(I)=CDSQRT(C(I))-DCMPLX(X(I))
       YY(I)=A(I)*X(I)+DREAL(Z(I))
       XX(I)=B(I)/Y(I)-DREAL(Z(I))
   10 CONTINUE
      PRINT *,A,B,C,X,Y,XX,YY,Z
      RETURN
      END
