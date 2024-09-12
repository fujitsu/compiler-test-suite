      PARAMETER (N=10)
      REAL*8 A1(N),A2(N),A3(N),A4(N),A5(N),A6(N),A7(N),A8(N),A9(N)
      REAL*8 X1(N),X2(N),X3(N),X4(N),X5(N),X6(N),X7(N),X8(N),X9(N)
      INTEGER L(N)
      DATA A1/N*1.0/,A2/N*9.9/,A3/N*-0.1/,A4/N*8.3/,A5/N*-5.3/,
     1     A6/N*5.0/,A7/N*2.9/,A8/N*-7.3/,A9/N*9.4/
      DATA L/N*1/
      DO 100 I=1,N
       VT1=A1(I)+1.2
       VT2=A2(I)*5.3
       VT3=A3(I)**2
       X1(I)=A1(I)+A2(I)
       X2(I)=SQRT(ABS(A1(I)))+0.00001
       X3(I)=(A2(I)+A3(I))/6.82
       X4(I)=A4(L(I))
       X5(I)=A5(I)-9.9999
       X6(I)=A6(I)/2.0
       X7(I)=A7(I)-6.54
       X8(I)=SQRT(ABS(A8(I)))+8.53196
       X9(I)=A9(I)*5.3
       A1(I)=X1(I)+X2(I)+X3(I)+X4(I)+X5(I)
       A2(I)=X6(I)+X7(I)+X8(I)+X9(I)+1.0
       A3(I)=1.0
       A4(L(I))=X1(I)-0.01
       A5(I)=-99.9
       A6(I)=SQRT(18.96)
       A7(I)=X7(I)
       A8(I)=-X8(I)
       A9(I)=X9(I)/6.45
  100 CONTINUE
      PRINT *,A1,A2,A3,A4,A5,A6,A7,A8,A9,
     1        X1,X2,X3,X4,X5,X6,X7,X8,X9
      STOP
      END
