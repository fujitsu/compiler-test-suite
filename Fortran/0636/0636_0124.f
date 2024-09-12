      PARAMETER (N=20)
      REAL*8 A1(N),A2(N),A3(N),A4(N),A5(N),A6(N),A7(N),A8(N),A9(N)
      REAL*8 X1(N),X2(N),X3(N),X4(N),X5(N),X6(N),X7(N),X8(N),X9(N)
      INTEGER L(N)
      COMPLEX Z1(N),Z2(N)
      DATA A1/20*1.0/,A2/20*9.9/,A3/20*-6.3/,A4/20*5.3/,A5/20*-4.2/,
     1     A6/20*6.9/,A7/20*5.1/,A8/20*1.9/,A9/20*-3.8/
      DATA L/20*1/
      DATA Z1/20*(-1.2,1.0)/
      DO 100 I=1,N
       X1(I)=A1(I)/2.0
       X2(I)=A2(I)*2.0
       X3(I)=SQRT(ABS(A3(I)))
       X4(I)=A4(L(I))-0.01
       X5(I)=A5(L(I))*2.0
       X6(I)=A6(I)-0.12
       X7(I)=A7(I)/1.1
       X8(I)=A8(I)*3.2
       X9(I)=A9(I)
       Z2(I)=CMPLX(A1(I))+(1.0,2.0)
       A1(I)=1.0
       A2(I)=X2(I)-X1(I)
       A3(I)=X3(I)/9.9999
       A4(L(I))=X4(I)+9.123
       A5(L(I))=X5(I)+1.111
       A6(I)=SQRT(ABS(X6(I)))
       A7(I)=X7(I)/3.11
       A8(I)=X8(I)+X9(I)
       A9(I)=(X8(I)+X9(I))/2.0
       Z2(I)=Z1(I)/2.0
  100 CONTINUE
      PRINT *,A1,A2,A3,A4,A5,A6,A7,A8,A9,
     1        X1,X2,X3,X4,X5,X6,X7,X8,X9,
     2        Z1,Z2
      STOP
      END
