      REAL A(10),B(10),C(10),D(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA D/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
      DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      LOGICAL  L/.FALSE./

      DO 10 I=1,10
        Y    = D(I) + C(I)
        A(I) = Y
        IF(.NOT.L) THEN
          X    = A(I)
          B(I) = X    + D(I)
          C(I) = D(I) * X
          Y    = C(I) * X
          A(I) = X    + C(I)
          C(I) = Y
        ENDIF
   10 CONTINUE
      PRINT *,A,C

      STOP
      END
