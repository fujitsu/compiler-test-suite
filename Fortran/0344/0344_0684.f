      REAL Z/1.0/
      IF (Z.GT.0.0) THEN
        X=0.0
      ELSE
        X=1.0
      ENDIF
      Y=X
      WRITE(6,1000) Y
 1000 FORMAT(F10.5)
      STOP
      END
