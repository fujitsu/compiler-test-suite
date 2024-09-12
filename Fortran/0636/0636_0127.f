      PARAMETER (N=10)
      REAL*8 A1(N),A2(N),A3(N),A4(N),A5(N),A6(N),A7(N),A8(N),A9(N)
      REAL*8 X1(N),X2(N),X3(N),X4(N),X5(N),X6(N),X7(N),X8(N),X9(N)
      INTEGER L(N)
      DATA A1/N*1.0/,A2/N*9.9/,A3/N*-5.1/,A4/N*9.3/,A5/N*-0.1/,
     1     A6/N*6.2/,A7/N*-6.2/,A8/N*-4.2/,A9/N*3.1/
      DATA X1,X2,X3,X4,X5,X6,X7,X8,X9/90*0/
      DATA L/N*1/
      DO 100 I=1,N
       X1(L(I))=A1(I)
       X2(I)=SQRT(ABS(A2(I)))
       X3(I)=SQRT(ABS(A3(I)))+0.0001
       X4(I)=A4(I)/7.3
       X5(I)=A5(I)*2.0
       X6(I)=A6(I)+7.301
       X7(I)=A7(I)-0.0021
       X8(I)=A8(I)+A1(I)+A9(I)
       X9(I)=X1(L(I))
  100 CONTINUE
      PRINT *,X1,X2,X3,X4,X5,X6,X7,X8,X9
      STOP
      END
