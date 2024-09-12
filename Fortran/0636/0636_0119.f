      PARAMETER (N=100)
      REAL*8 A1(N),A2(N),A3(N),A4(N),A5(N),A6(N),A7(N),A8(N),A9(N)
      REAL*8 X1(N),X2(N),X3(N),X4(N),X5(N),X6(N),X7(N),X8(N),X9(N)
      LOGICAL L(N),M
      DATA L/25*.FALSE.,25*.TRUE.,25*.FALSE.,25*.TRUE./,M/.FALSE./
      DO 100 I=1,N
       A1(I)=REAL(I)+0.1
       A2(I)=A1(I)-0.9
       A3(I)=SQRT(REAL(I))
       A4(I)=A3(I)-3.8
       A5(I)=1.0
       A6(I)=100.0
       A7(I)=3.7
       A8(I)=-9.8
       A9(I)=9.9
       X2(I) = 0.0
  100 CONTINUE
      DO 200 I=1,N
       IF(L(I)) THEN
         X1(I)=(A1(I)+A2(I))/3.0
       ELSE
         X1(I)=1.0
       ENDIF
      J=1
      DO 1 II=1,N
       IF( M ) THEN
         X2(J)=A2(II)
         J=J+1
       ENDIF
       X3(II)=1
       X4(1)=X3(II)
    1 CONTINUE
      X4(I)=X1(I)+X2(I)+2.4
      X5(I)=SQRT(ABS(A4(I)))
      X6(I)=SQRT(ABS(A5(I)))
      X7(I)=A5(I)-A6(I)
      X7(I)=A7(I)-0.1
      X8(I)=A6(I)+A7(I)+A8(I)
      IF(L(I)) THEN
        X9(I)=A9(I)
      ELSE
        X9(I)=A3(I)
      ENDIF
      IF(I.LE.10) THEN
        A1(I)=X1(I)-0.2
      ELSEIF(I.GT.10.AND.I.LE.20) THEN
        A2(I)=X2(I)
      ELSEIF(I.GT.20.AND.I.LE.30) THEN
        A3(I)=X3(I)+0.5
      ELSEIF(I.GT.30.AND.I.LE.40) THEN
        A4(I)=X4(I)+5.3
      ELSEIF(I.GT.40.AND.I.LE.50) THEN
        A5(I)=SQRT(ABS(X5(I)))
      ELSEIF(I.GT.50.AND.I.LE.70) THEN
        A6(I)=X6(I)
      ELSEIF(I.GT.70.AND.I.LE.90) THEN
        A7(I)=X7(I)
      ELSEIF(I.GT.90) THEN
        A8(I)=X8(I)
      ENDIF
      IF(A3(I).GT.5.0) THEN
        A9(I)=X9(I)+0.1
      ELSE
        A9(I)=X9(I)-0.1
      ENDIF
  200 CONTINUE
      PRINT *,X1,X2,X3,X4,X5,X6,X7,X8,X9
      STOP
      END
