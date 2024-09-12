      PARAMETER (N=20)
      REAL*8 A1(N),A2(N),A3(N),A4(N),A5(N),A6(N),A7(N),A8(N),A9(N)
      REAL*8 X1(N),X2(N),X3(N),X4(N),X5(N),X6(N),X7(N),X8(N),X9(N)
      LOGICAL L(N)
      DATA L/10*.FALSE.,10*.TRUE./
      DO 100 I=1,N
       X1(I)=I
       X2(I)=I+0.1
       X3(I)=I-0.01
       X4(I)=I+0.2
       X5(I)=I-0.3
       X6(I)=SQRT(REAL(I))
       X7(I)=X6(I)-0.0001
       X8(I)=1.0
       X9(I)=-0.05311
       A1(I)=X1(I)+0.4
       A2(I)=X2(I)-0.6
       A3(I)=X3(I)*2.0
       A4(I)=X4(I)-0.999
       A5(I)=SQRT(ABS(X5(I)))+9.1D0
       A6(I)=X6(I)/2.0
       A7(I)=X7(I)/3.7
       A8(I)=X8(I)*0.5
       A9(I)=X9(I)-0.6
       IF(L(I)) THEN
        X1(I)=A1(I)+A2(I)+A3(I)+A4(I)+A5(I)+A6(I)+A7(I)+A8(I)+A9(I)
       ELSE
        A1(I)=X1(I)+X2(I)+X3(I)+X4(I)+X5(I)+X6(I)+X7(I)+X8(I)+X9(I)
       ENDIF
  100 CONTINUE
      PRINT *,A1,A2,A3,A4,A5,A6,A7,A8,A9,
     1        X1,X2,X3,X4,X5,X6,X7,X8,X9
      STOP
      END
