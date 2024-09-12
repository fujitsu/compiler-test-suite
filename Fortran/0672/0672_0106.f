      X=3.
      Y=5.
      A=0.
      B=0.
      C=0.
      D=0.
      E=0.
      F=0.
      G=0.
      H=0.
      O=0.
      P=0.
      DO 29 J=1,3
      DO 19 I=1,2
   10 CONTINUE
      O=Y-X
      GO TO 15
      E=X/Y
      IF(I.EQ.2) GO TO 13
   11 CONTINUE
      F=X/Y
      GO TO 14
   13 CONTINUE
      A=X*Y
      C=X+Y
   14 CONTINUE
      G=X-Y
   12 CONTINUE
   17 CONTINUE
      B=X*Y
   16 CONTINUE
      H=X-Y
   15 CONTINUE
      D=X+Y
   18 CONTINUE
      P=Y-X
   19 CONTINUE
   29 CONTINUE
      WRITE(6,1000) X,Y
      WRITE(6,1000) A,B,C,D,E,F,G,H,O,P
      STOP
 1000 FORMAT(10X,5E20.7)
      END
