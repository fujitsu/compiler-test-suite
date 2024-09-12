      PARAMETER (N=50)
      REAL*8 A1(N),A2(N),A3(N),A4(N),A5(N),A6(N),A7(N),A8(N),A9(N)
      REAL*8 X1(N),X2(N),X3(N),X4(N),X5(N),X6(N),X7(N),X8(N),X9(N)
      LOGICAL M(N)
      INTEGER L(N)
      DATA M/10*.TRUE.,10*.FALSE.,20*.TRUE.,10*.FALSE./
      DO 10 I=1,N
       A1(I)=I
       A2(I)=I+2
       A3(I)=I*5
       A4(I)=I-4
       A5(I)=SQRT(REAL(I))
       A6(I)=A5(I)-0.046
       A7(I)=I+3
       A8(I)=1.0
       A9(I)=(A7(I)+A8(I))/4.5
   10 CONTINUE
      DO 20 I=1,N
       L(I)=I
       X1(I)=A1(I)
       X2(I)=A2(I)
       X3(I)=A3(I)
       X4(I)=A4(I)
       X5(I)=A5(I)
       X6(I)=A6(I)
       X7(I)=A7(I)
       X8(I)=A8(I)
       X9(I)=A9(I)
       A1(I)=SQRT(ABS(X1(I)))
       A2(I)=X2(I)*2.0
       IF(M(I)) THEN
        A3(L(I))=9.9
       ENDIF
       A4(I)=(X1(I)+X2(I))/4.3
       X3(I)=X1(I)*2.5
       X3(I)=X2(I)+0.1
       A5(I)=X5(I)+0.1
       A6(I)=X6(I)
       IF(A7(I).GT.5.0) THEN
        A8(I)=X8(I)-0.5
       ELSE
        A8(I)=X8(I)+5.0
       ENDIF
       A9(I)=X9(I)/3.8
   20 CONTINUE
      PRINT *,A1,A2,A3,A4,A5,A6,A7,A8,A9
      STOP
      END
