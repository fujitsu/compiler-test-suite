      REAL A(10)
      DATA A/3.,5.,7.,1.,2.,0.,3.,6.,7.,8./

      X=A(1)
      DO 10 I=1,10
        IF (A(I).GT.X) THEN
          X=A(I)
        ENDIF
10    CONTINUE
      WRITE(6,1) A,X
 1    FORMAT(5F10.5)
      STOP
      END
