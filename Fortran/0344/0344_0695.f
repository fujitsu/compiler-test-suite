      REAL*4  A(100)/100*2.0/
      X=0.0
      Y=0.0
      DO 10 I=1,100
        IF (A(I).GT.X) THEN
          X=A(I)
          Y=SQRT(X)
        ENDIF
  10  CONTINUE
      WRITE(6,600) X,Y
 600  FORMAT(1H , F12.3)
      STOP
      END
