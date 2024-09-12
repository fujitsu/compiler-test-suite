        REAL A(10),B(10),C(10)
        DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        DATA B/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
        DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        REAL S1,S2
        REAL X(10)
        DATA X/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
        LOGICAL L(10),LL(10),LSW
        DATA L/2*.TRUE.,.FALSE.,.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./
        DATA LL/2*.TRUE.,.FALSE.,.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./

          DO 10 J = 1 , 10
          DO 10 I = 1 , 10
            LSW = A(I) .LE. B(I)
            IF( LL(I) ) THEN
              S1 = B(I) - X(I)
              S2 = B(I) + X(I)
              IF( LSW ) S1   = C(I) * B(I)
              IF( LSW ) S2   = C(I) * B(I)
              X(I) = S1   + A(I)
              A(I) = S2   - X(I)
              IF( L(J) ) THEN
                 B(I) = S1 + X(I)
                 S1   = A(I) + C(I)
               ELSE
                 B(I) = S2 - X(I)
                 S1   = A(I) - C(I)
              ENDIF
            ENDIF
 10       CONTINUE

          PRINT *,B,X
          END
