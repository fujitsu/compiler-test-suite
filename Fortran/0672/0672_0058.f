      CALL INIT(A,B,C)
      X2=0.
      X3=0.
      X4=0.
      X5=0.
      X6=0.
      X7=0.
      X8=0.
      X9=0.
      IF(A.LT.0.) GO TO 90
    1 X0=SIN(B)
      X1=COS(B)
      DO 10 I=1,10
    4 IF(I.EQ.4) X4=X4+SIN(A)
    6 IF(I.EQ.6) X6=X6+SIN(A)*B
    5 IF(I.EQ.5) X5=X5+COS(A)
    7 IF(I.EQ.7) X7=X7+COS(A)*C
    2 X2=X2+SIN(A)
    8 IF(I.EQ.8) X8=X8+SIN(A)*B
    3 X3=X3+COS(A)
    9 IF(I.EQ.9) X9=X9+COS(A)*C
   10 CONTINUE

      CALL OUT6(X0,X1,X2,X3,X4,X5)
      CALL OUT4(X6,X7,X8,X9)
   90 STOP
      END

      SUBROUTINE INIT(A,B,C)
      A=1.
      B=2.
      C=3.
      RETURN
      ENTRY OUT6(X0,X1,X2,X3,X4,X5)
      WRITE(6,100) X0,X1,X2,X3,X4,X5
      RETURN
      ENTRY OUT4(X0,X1,X2,X3)
      WRITE(6,100) X0,X1,X2,X3
      RETURN
  100 FORMAT(5X,3E20.7)
      END
