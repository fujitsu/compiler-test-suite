        REAL A(10),B(10),C(10)
        DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        DATA B/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
        DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        REAL S/2.0/
        REAL X(10)
        DATA X/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
        LOGICAL L(10),LL(10),LSW
        DATA L/2*.TRUE.,.FALSE.,.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
        DATA LL/2*.TRUE.,.FALSE.,.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./

          DO 10 J = 1 , 10
          DO 10 I = 1 , 10
            LSW = A(I) .GE. B(I)
              S = C(I) - B(I)
              IF( LSW ) A(I) = S + B(I)
              IF( LSW ) THEN
                  S = S + A(I)
                ELSE
                  S = S - A(I)
              ENDIF
              IF( L(J) ) Y = S + C(I)
              IF( LSW ) X(I) = S + B(I)
              XX = X(I) - Y
 10       CONTINUE

          PRINT *,X
          END
