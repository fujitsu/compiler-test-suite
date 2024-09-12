      REAL A(10),B(10),C(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA B/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
      DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      LOGICAL L1/.TRUE./

      DO 10 I=1,10
        A(I) = B(I) + C(I)
        IF(L1) THEN
          A(I) = B(I) * C(I)
          IF(I.GT.5) A(I) = A(I) - B(I)
        ENDIF
   10 CONTINUE
      PRINT *,A

      STOP
      END
