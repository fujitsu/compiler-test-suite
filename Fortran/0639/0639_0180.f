        REAL A(10),B(10),C(10)
        DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        DATA B/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
        DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        REAL S/2.0/
        REAL X(10)
        DATA X/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
        LOGICAL L(10),LSW
        DATA L/2*.TRUE.,.FALSE.,.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./

          DO 10 J = 1 , 10
          DO 10 I = 1 , 10
            LSW = A(I) .GE. B(I)
            S = C(I) - B(I) - 1.0
            Y = C(I) - A(I) - 2.0
              IF( LSW ) A(I) = Y + B(I)
              IF( L(J) ) Y = S - A(I)
              IF( LSW ) S = Y + B(I)
              IF( L(J) ) THEN
                  S = S + X(I)
                ELSE
                  S = Y - X(I)
              ENDIF
              X(I) = S - C(I) - Y
 10       CONTINUE

          PRINT *,X
          END
