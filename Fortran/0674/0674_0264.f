      PARAMETER(N=20)
      REAL*8 A1(N),A2(N),A3(N),A4(N),A5(N),A6(N),A7(N),A8(N),A9(N)
      REAL*8 X1(N),X2(N),X3(N),X4(N),X5(N),X6(N),X7(N),X8(N),X9(N)
      LOGICAL L(N)
      COMPLEX Z1(N),Z2(N)
      DATA A1/20*1.0/,A2/20*2.0/,A3/20*3.0/,A4/20*4.0/,A5/20*5.0/,
     1     A6/20*5.8/,A7/20*-9.9/,A8/20*6.3/,A9/20*9.9/
      DATA Z1/20*(2.0D0,7.0D0)/
      DATA L/10*.TRUE.,10*.FALSE./
      DO 100 I=1,N
       X1(I)=SQRT(ABS(A1(I)))+9.46721
       X2(I)=X1(I)-0.0001
       X3(I)=A1(I)+A2(I)
       X4(I)=A2(I)*0.5
       Z2(I)=CMPLX(A1(I))
       X5(I)=(A4(I)+A5(I))/2.0
       X6(I)=A6(I)/3.0
       X7(I)=A7(I)*3.5
       XX=2.0
       IF(XX.GT.X5(I)) THEN
        Z2(I)=Z1(I)/2.0
       ENDIF
       X8(I)=SQRT(ABS(A2(I)))-0.4742
       X9(I)=A3(I)+A8(I)+A9(I)
       IF (L(I)) THEN
        A1(I)=X1(I)+X2(I)+X3(I)+X4(I)+X5(I)
       ELSE
        A2(I)=X6(I)+X7(I)+X8(I)+X9(I)
       ENDIF
  100 CONTINUE
      PRINT *,A1,A2,A3,A4,A5,A6,A7,A8,A9,
     1        X1,X2,X3,X4,X5,X6,X7,X8,X9
      STOP
      END
