        REAL A(10),B(10),C(10)
        DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        DATA B/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
        DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        REAL X(10),Z(10)
        DATA Z/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        REAL S/2.0/
        LOGICAL L(10),LL(10),LSW
        DATA L/2*.TRUE.,.FALSE.,.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
        DATA LL/2*.TRUE.,.FALSE.,.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./

      DO 20 J=1,10
          DO 10 I = 1 , 10
            S = C(I) - B(I)
            X(I) = S - 1.0
            IF( I.LE.5) THEN
                A(I) = S + B(I)
              ELSE
                S = C(I) + 1.0
                X(I) = X(I) - S
            ENDIF
            IF( I.LE.5) Z(I) = S + B(I)
   10     CONTINUE

          DO 20 I = 1 , 10
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
 20       CONTINUE

          PRINT *,X,Z
          END
