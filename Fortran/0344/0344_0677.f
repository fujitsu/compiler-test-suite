      REAL A(100)/100*1.0/
      REAL C(100)/50*0.0,50*2.0/
      X=0.0
      DO 10 I=1,100
        IF (C(I).GT.1.0) THEN
          X=MAX(X,A(I))
        ENDIF
   10 CONTINUE
      WRITE(6,1000) X
 1000 FORMAT(F10.5)
      STOP
      END
