      PARAMETER (N=20)
      REAL*8 A1(N),A2(N),A3(N),A4(N),A5(N),A6(N),A7(N),A8(N),A9(N)
      REAL*8 X1(N),X2(N),X3(N),X4(N),X5(N),X6(N),X7(N),X8(N),X9(N)
      INTEGER L(N)
      COMPLEX Z(N)
      DATA A1/20*1.1/,A2/20*5.0/,A3/20*-5.3/,A4/20*9.9/,A5/20*7.9/,
     *     A6/20*4.4/,A7/20*-0.1/,A8/20*8.8/,A9/20*6.6/
      DATA L/20*1/
      DO 100 I=1,N
       X1(I)=A1(I)
       X2(I)=A2(I)
       X3(I)=A3(I)
       X4(I)=A4(I)
       X5(I)=A5(I)
       XX=5.0
       IF(XX.GT.A1(10)) THEN
        A1(I)=A2(I)+A3(I)+A4(I)
       ENDIF
       A1(L(I))=1.0
       X6(I)=SQRT(ABS(A1(I)))
       Z(I)=CMPLX(A2(I))
       X7(I)=A7(I)
       X8(I)=A8(I)
       X9(I)=A9(I)
       A1(I)=X1(I)+0.1
       A2(I)=X2(I)-0.1
       A3(I)=(A1(I)+A2(I))/2.0
       A4(I)=X4(I)-0.9
       A5(L(I))=-A1(I)-0.99999
       A6(I)=SQRT(ABS(X6(I)))
       A7(I)=A6(I)
       A8(I)=1.0
       A9(I)=-3.89
  100 CONTINUE
      PRINT *,A1,A2,A3,A4,A5,A6,A7,A8,A9,
     1        X1,X2,X3,X4,X5,X6,X7,X8,X9
      STOP
      END
