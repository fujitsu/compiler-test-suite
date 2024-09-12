      PARAMETER (N=20)
      REAL*8 A1(N),A2(N),A3(N),A4(N),A5(N),X1(N),X2(N),X3(N),X4(N),X5(N)
      DATA A1/20*1.0/,A2/20*8.0/,A3/20*9.9/,A4/20*5.0/,A5/20*-0.1/
      DO 100 I=1,N
       X1(I)=A1(I)
       X2(I)=A2(I)*8.5
       X3(I)=SQRT(ABS(A3(I)))-0.0002
       X1(I)=2.0
       X4(I)=A4(I)
       X5(I)=A1(I)+A2(I)
  100 CONTINUE
      PRINT *,A1,A2,A3,A4,A5,X1,X2,X3,X4,X5
      STOP
      END
