        REAL A(10),B(10),C(10)
        DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        DATA B/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
        DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
        REAL S/2.0/
        REAL X(10),Z(10)
        DATA X/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
        DATA Z/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
        LOGICAL L(10),LSW
        DATA L/2*.TRUE.,.FALSE.,.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./

          DO 10 J = 1 , 10
          DO 10 I = 1 , 10
            LSW = A(I) .GE. B(I)
            S = C(I) - B(I) - 3.0
              IF( LSW ) S = C(I) + B(I)
              IF( LSW ) A(I) = C(I) + B(I)
              IF( L(J) ) THEN
                   X(I) = S - A(I)
               ELSE
                   S = C(I) - X(I)
              ENDIF
              IF( LSW ) S = C(I) + B(I)
              X(I) = S - C(I)
 10       CONTINUE

          PRINT *,X
          END