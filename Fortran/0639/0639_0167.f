        REAL A(10),B(10),C(10)
        DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        DATA B/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
        DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        REAL X(10),Z(10)
        DATA Z/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        REAL S/2.0/

          DO 10 I = 1 , 10
            S = C(I) - B(I)
            X(I) = S - 1.0
            IF( I.LE.5) THEN
                A(I) = S + B(I)
              ELSE
                S = C(I) - B(I)
                X(I) = X(I) - S
            ENDIF
            IF( I.LE.5) Z(I) = S + B(I)
 10       CONTINUE

          PRINT *,Z ,X
          END
