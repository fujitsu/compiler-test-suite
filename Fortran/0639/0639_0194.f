      REAL A(10),B(10),C(10),D(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA D/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
      DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./

      DO 10 I=1,10
        A(I) = D(I) + C(I)
        X    = 1.
        IF(I.GE.5) THEN
          X    = A(I)
          B(I) = X    + D(I)
          C(I) = A(I) * X
          X    = B(I) + C(I)
          A(I) = X
        ENDIF
   10 CONTINUE
      PRINT *,A

      STOP
      END
