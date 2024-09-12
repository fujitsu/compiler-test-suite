          REAL     A(1026),B(1026),C(1026),D(1026),Z(1026)
          LOGICAL L1(1026),L2(1026)
          DATA A/103*1.,103*3.,103*5.,103*7.,103*9.,
     E           103*2.,103*4.,103*6.,103*8., 99*0./
          DATA B/103*1.,103*3.,103*5.,103*7.,103*9.,
     E           103*2.,103*4.,103*6.,103*8., 99*0./
          DATA C/103*1.,103*2.,103*1.,103*2.,103*1.,
     E           103*2.,103*1.,103*2.,103*1., 99*2./
          DATA D/103*0.,103*8.,103*6.,103*4.,103*2.,
     E           103*9.,103*7.,103*5.,103*3., 99*1./
          DATA Z/103*1.,103*4.,103*7.,103*0.,103*3.,
     E           103*6.,103*9.,103*2.,103*5., 99*8./
      DATA L1/
     1    103*.TRUE.,103*.FALSE.,103*.TRUE.,103*.FALSE.,103*.TRUE.,
     E    103*.FALSE.,103*.TRUE.,103*.FALSE.,103*.TRUE., 99*.FALSE./
      DATA L2/
     1   103*.TRUE.,103*.FALSE.,103*.TRUE.,103*.FALSE.,103*.TRUE.,
     E   103*.FALSE.,103*.TRUE.,103*.FALSE.,103*.TRUE., 99*.FALSE./

          LOGICAL*4 L(1026)
      DATA L/
     1   103*.TRUE.,103*.FALSE.,103*.TRUE.,103*.FALSE.,103*.TRUE.,
     E   103*.FALSE.,103*.TRUE.,103*.FALSE.,103*.TRUE., 99*.FALSE./
          LOGICAL*4 Q(1026)
      DATA Q/
     1    103*.TRUE.,103*.FALSE.,103*.TRUE.,103*.FALSE.,103*.TRUE.,
     E    103*.FALSE.,103*.TRUE.,103*.FALSE.,103*.TRUE., 99*.FALSE./
          LOGICAL*4 LA(1026)/1026*.TRUE./,LB(1026)/1026*.TRUE./
          X = 0.
          Y = 0.

          DO 10 J = 1 , 1026
          DO 10 I = 1 , 1026
            IF( L(I) ) LA(I) = L1(I) .AND. L2(I)
              IF( Q(J) ) THEN
                IF( LA(I) ) THEN
                   X = X + A(I)
                   B(I) = Z(I) + 1.0
                ENDIF
              ENDIF

            IF( Q(J) ) THEN
                C(I) = B(I) - 1.0
            ENDIF

            IF( L(I) ) LB(I) = L1(I) .AND. L2(I)
               IF( LB(I) ) THEN
                   Y = Y + A(I)
                   D(I) = C(I) * 1.0
                   ENDIF
 10       CONTINUE
          PRINT *,X,Y
          END
