      REAL*4  A(100)/25*1.0,25*4.0,25*2.0,25*3.0/
      X=0.0
      K=0
      DO 10 I=1,100
        IF (A(I).GT.X) THEN
          X=A(I)
          K=I
          Z=A(I)
        ENDIF
  10  CONTINUE
      WRITE(6,600) X
      WRITE(6,700) K
      WRITE(6,600) Z
 600  FORMAT(1H , F12.3)
 700  FORMAT(1H , I5)
      STOP
      END
