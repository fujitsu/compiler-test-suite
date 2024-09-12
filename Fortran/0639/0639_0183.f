      REAL A(10),B(10),C(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA B/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
      DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      LOGICAL L1/.TRUE./,L2/.FALSE./

      DO 10 I=1,10
        X = B(I) + C(I)
        A(I) = X
        IF(L1) THEN
          X = B(I) * C(I)
          IF(.NOT.L2) THEN
            IF(I.GE.1) THEN
              A(I) = A(I) + X
            ENDIF
          ENDIF
        ENDIF
   10 CONTINUE
      PRINT *,B

      STOP
      END
