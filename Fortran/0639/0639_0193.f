      REAL A(10),B(10),C(10),D(10)
      EQUIVALENCE (A(1),B(1))
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA D/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
      DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./

      DO 10 I=1,10
        A(I) = D(I) + C(I)
        D(I) = B(I) * C(I)
   10 CONTINUE
      PRINT *,A,D

      STOP
      END
