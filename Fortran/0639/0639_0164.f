        REAL A(10),B(10),C(10),X(10)
        DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        DATA B/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
        DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        DATA X/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        REAL S/2.0/
        LOGICAL L(10)
        DATA L/2*.TRUE.,.FALSE.,.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./

          DO 10 J = 1 , 10
          DO 10 I = 1 , 10
            S = C(I) - B(I)
            IF( L(I) ) A(I) = S + B(I)
            IF( L(J) ) THEN
              B(I) = A(I) - S
             ELSE
              S = S - A(I)
              IF( L(I) ) X(I) = S + B(I)
             ENDIF
 10       CONTINUE

          PRINT *,A,X
          END