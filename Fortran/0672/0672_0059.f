      CALL INIT(A,B,C,D,E,F,G,H)
   10 IF(A.LT.0) GO TO 90
      X1=SIN(A)
      Y1=COS(A)
      X4=SIN(D)*E
      Y4=COS(D)*F
      X8=SIN(G)*H
      Y8=COS(G)*G
      DO 30 I=1,10
      X2=SIN(A)*B
      Y2=COS(A)*C
      X3=SIN(A)*B
      Y3=COS(A)*C
      X5=SIN(D)
      Y5=COS(D)
      X6=SIN(D)*E
      Y6=COS(D)*F
      X7=SIN(D)*E
      Y7=COS(D)*F
      X9=SIN(G)*H
      Y9=Y8
   30 CONTINUE

      CALL OUT(X1,Y1,X2,Y2,X3,Y3)
      CALL OUT(X4,Y4,X5,Y5,X6,Y6)
      CALL OUT(X7,Y7,X8,Y8,X9,Y9)
   90 STOP
      END

      SUBROUTINE INIT(A,B,C,D,E,F,G,H)
      A=1.
      B=2.
      C=3.
      D=4.
      E=5.
      F=6.
      G=7.
      H=8.
      RETURN
      ENTRY OUT(X1,Y1,X2,Y2,X3,Y3)
      WRITE(6,100) X1,Y1,X2,Y2,X3,Y3
  100 FORMAT(5X,6E20.7)
      RETURN
      END
