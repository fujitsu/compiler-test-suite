      CALL INIT(A,B,C,D)

      DO 20 I=1,3
    1 X0=SQRT(A)+B*D
      IF(I.EQ.3) DUMMY=0.
    3 X1=SIN(A)*D
      X2=SIN(A)*C
      X3=COS(A)
      X4=SQRT(A)+C*D
      DO 10 J=1,2
    8 X7=SIN(A)*J
      X6=SIN(A)*C
      X5=SIN(A)*D
   10 CONTINUE
   20 CONTINUE

      CALL OUT4(X0,X1,X2,X3)
      CALL OUT4(X4,X5,X6,X7)
      STOP
      END

      SUBROUTINE INIT(A,B,C,D)
      A=1.
      B=2.
      C=3.
      D=4.
      RETURN
      ENTRY OUT4(X0,X1,X2,X3)
      WRITE(6,100) X0,X1,X2,X3
      RETURN
  100 FORMAT(5X,5E20.7)
      END
