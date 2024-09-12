      PARAMETER(N=10)
      REAL A(N),B(N),X1(N),X2(N),X3(N),X4(N),X5(N)
      DATA A/N*9.9/,B/N*1.0/,S/10.9/
      CALL SUB(A,B,X1,X2,X3,X4,X5,N,S)
      STOP
      END

      SUBROUTINE SUB(A,B,X1,X2,X3,X4,X5,N,S)
      REAL A(N),B(N),X1(N),X2(N),X3(N),X4(N),X5(N)
      DO 10 I=1,N
      S=A(I)
      X1(I)=I
      X2(I)=SQRT(REAL(I))
      X3(I)=X2(I)-0.001
      X4(I)=X1(I)+B(I)
      X5(I)=S-X4(I)
      B(I)=X5(I)
   10 CONTINUE
      PRINT *,A,B,S,X1,X2,X3,X4,X5
      RETURN
      END
