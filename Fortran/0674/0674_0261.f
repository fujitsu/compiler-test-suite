      PARAMETER (N=50)
      REAL*8 A1(N),A2(N),A3(N),A4(N),A5(N),A6(N),A7(N),A8(N),A9(N)
      REAL*8 X1(N),X2(N),X3(N),X4(N),X5(N),X6(N),X7(N),X8(N),X9(N)
      LOGICAL M(N)
      INTEGER L(N)
      DATA M/10*.TRUE.,20*.FALSE.,10*.TRUE.,10*.FALSE./
      data X7/N*0.0/,X8/N*0.0/
      DO 10 I=1,N
       A1(I)=I
       A2(I)=SQRT(DBLE(I))
       A3(I)=A1(I)+A2(I)
       A4(I)=0.9
       A5(I)=DBLE(I)+4.9742
       A6(I)=(A3(I)+A4(I))/5.0
       A7(I)=A6(I)-8.8
       A8(I)=ABS(A7(I))
       A9(I)=A8(I)
   10 CONTINUE
      DO 20 I=1,N
       L(I)=I
       X1(I)=A1(I)+0.3
       X2(I)=A2(I)-0.6
       X3(I)=A3(I)-0.54
       A1(I)=X1(I)+X2(I)
       X4(I)=A2(I)+X2(I)-9.9
       X5(I)=SQRT(ABS(A5(I)))-0.86
       X6(I)=SQRT(ABS(A6(I)))+4.3
       IF(M(I)) X7(L(I))=1.0
       X7(I)=X7(I)+9.9
       X8(I)=X8(I)-0.2
       X9(I)=(A9(I)+A1(I))/3.5
       A1(I)=X1(I)+X2(I)+X3(I)+X4(I)+X5(I)
       A2(I)=X6(I)+X7(I)+X8(I)+X9(I)
       COMP=(A1(5)+A2(5))/2.0
       IF (COMP.GT.10.0) THEN
        A3(I)=-X1(I)+X2(I)-X3(I)-X4(I)+X5(I)
       ELSE
        A4(I)=X6(I)+X7(I)-X8(I)-X9(I)
       ENDIF
   20 CONTINUE
      PRINT *,X1,X2,X3,X4,X5,X6,X7,X8,X9
      STOP
      END
