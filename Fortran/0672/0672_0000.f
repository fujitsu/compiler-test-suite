      DIMENSION A(10)
      X=-1.
      DO 5 J=1,10
      IF(X.GE.0.0) X=X-2.0
      X=1.0
      DO 10 I=1,10
      A(I)=-1.+SIN(X)
      IF(X.GT.0.0) A(I)=SQRT(X)
   10 CONTINUE
   5  CONTINUE
      WRITE(6,100) (A(I),I=1,10)

  100 FORMAT(///,10X,5(F10.4),/,10X,5(F10.4))
      DO 20 I=1,5
      GO TO (21,22,23,24,25),I
   21 A(1)=SIN(X)
      GO TO 20
  22  A(2)=COS(X)
      GOTO 20

   23 IF(X.GT.0.0) THEN
        A(3)=SQRT(X)
      ELSE
        A(3)=0.0
      ENDIF
      GOTO 20
  24  A(4)=EXP(X)
      GOTO 20
  25  A(5)=TAN(X)
  20  CONTINUE
      WRITE(6,100) (A(I),I=1,5)
      STOP
       END
