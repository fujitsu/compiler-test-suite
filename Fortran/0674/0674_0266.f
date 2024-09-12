      PARAMETER (N=20)
      REAL*8 A1(N),A2(N),A3(N),A4(N),A5(N),A6(N),A7(N),A8(N),A9(N)
      REAL*8 X1(N),X2(N),X3(N),X4(N),X5(N),X6(N),X7(N),X8(N),X9(N)
      INTEGER L(N)
      COMPLEX Z1(N),Z2(N)
      DATA A1/20*1.1/,A2/20*-0.4/,A3/20*8.1/,A4/20*-9.5/,A5/20*6.7/,
     *     A6/20*9.2/,A7/20*1.0/,A8/20*7.3/,A9/20*7.1/
      DATA L/20*9/
      DATA Z1/20*(1.0D0,1.0D0)/
      X6 = 0.0
      DO 100 I=1,N
       X1(I)=A1(I)-0.1
       X2(I)=A2(I)+0.1
       X3(I)=SQRT(ABS(A3(I)))
       X4(I)=SQRT(ABS(A4(I)))-0.001
       X5(I)=A5(I)/5.2
       X6(I)=A6(I)*2.5
       XX=2.1
       IF(XX.GT.X6(10)) THEN
        A4(I)=X1(I)+X2(I)+X3(I)+X4(I)+X5(I)+X6(I)
       ENDIF
       X7(I)=A7(L(I))*0.3-9.2
       X8(I)=A8(I)-0.000001
       X9(I)=A9(I)/9.999999
       Z1(I)=CMPLX(A9(I))
       Z2(I)=Z1(I)/2.0
       A1(I)=X1(I)+X2(I)
       A2(I)=(X1(I)+X2(I))/2.0
       A3(I)=A4(I)-0.1
       A4(I)=X4(I)+0.01
       A5(I)=A8(I)+A9(I)
       A6(I)=X6(I)
       A7(I)=ABS(X7(I))
       A8(I)=X8(I)+0.1111
       A9(I)=X9(I)-0.00001
  100 CONTINUE
      PRINT *,A1,A2,A3,A4,A5,A6,A7,A8,A9,
     1        X1,X2,X3,X4,X5,X6,X7,X8,X9
      STOP
      END
