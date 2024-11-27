          REAL A(10),B(10),C(10),D(10)
          DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
          DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./,D/10*1.0/
          EQUIVALENCE  (A(1),B(1))
          DO 10 I = 1 , 10
            A(I) = C(I) + 2.0
            D(I) = A(I) * 2.0
 10       CONTINUE
            PRINT *,A,D
            END
