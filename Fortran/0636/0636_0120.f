      PARAMETER (N=10)
      REAL*8 X1(N),X2(N),X3(N),X4(N),X5(N),X6(N),X7(N),X8(N),X9(N)
      INTEGER A(N),B(N),C(N)
      COMPLEX Z1(N),Z2(N)
      LOGICAL L(N),M
      DATA A/10*1/,B/10*0/,C/10*0/
      DATA L/10*.FALSE./,M/.FALSE./
      DATA Z1/10*(5.8D1,7.D0)/
      DATA X1,X2,X3,X4,X5,X6,X7,X8,X9/90*0/
      DO 100 J=1,N
       X1(J)=J
       X2(J)=J+1.09
       X3(J)=SQRT(REAL(J))
       X4(J)=X3(J)-0.01
       X5(J)=(X1(J)+X2(J))/4.9
       X6(J)=2.865
       X7(J)=-X1(J)+8.9
       JJ=1
       DO 10 I=1,N
        IF( M ) THEN
          IF(L(I)) THEN
           C(JJ)=B(I)
           Z2(JJ)=CABS(Z1(I))
           JJ=JJ+1
          ENDIF
        ENDIF
        B(I)=1
        A(1)=B(I)
   10 CONTINUE
      Z2(J)=CMPLX(X3(J))
      X8(J)=X1(J)*3.0
      X9(J)=X2(J)*5.6-0.1
      X1(J)=X4(J)+X5(J)
      X2(J)=SQRT(X6(J))
      X3(J)=X9(J)-X2(J)
      X4(J)=X8(J)+9.97
      X5(J)=X9(J)-0.3
      X6(J)=SQRT(ABS(X1(J)))*2.5
      X7(J)=(X1(J)+X2(J))/4.7
      IF(A(J).GE.B(J)) THEN
       X8(J)=X1(J)+X2(J)+X3(J)
      ELSE
       X9(J)=X4(J)+X5(J)+X6(J)+SQRT(ABS(X7(J)))
      ENDIF
  100 CONTINUE
      PRINT *,X1,X2,X3,X4,X5,X6,X7,X8,X9,A,B,C,Z1,Z2
      STOP
      END
