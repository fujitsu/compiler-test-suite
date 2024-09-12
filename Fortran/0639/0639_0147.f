          REAL     A(1601),B(1601),C(1601),D(1601),Z(1601)
          LOGICAL L1(1601),L2(1601)
          DATA A/161*1.,160*3.,160*5.,160*7.,160*9.,
     E           160*2.,160*4.,160*6.,160*8.,160*0./
          DATA B/161*1.,160*3.,160*5.,160*7.,160*9.,
     E           160*2.,160*4.,160*6.,160*8.,160*0./
          DATA C/161*1.,160*2.,160*1.,160*2.,160*1.,
     E           160*2.,160*1.,160*2.,160*1.,160*2./
          DATA D/161*0.,160*8.,160*6.,160*4.,160*2.,
     E           160*9.,160*7.,160*5.,160*3.,160*1./
          DATA Z/161*1.,160*4.,160*7.,160*0.,160*3.,
     E           160*6.,160*9.,160*2.,160*5.,160*8./
      DATA L1/
     1    161*.TRUE.,160*.FALSE.,160*.TRUE.,160*.FALSE.,160*.TRUE.,
     E    160*.FALSE.,160*.TRUE.,160*.FALSE.,160*.TRUE.,160*.FALSE./
      DATA L2/
     1   161*.TRUE.,160*.FALSE.,160*.TRUE.,160*.FALSE.,160*.TRUE.,
     E   160*.FALSE.,160*.TRUE.,160*.FALSE.,160*.TRUE.,160*.FALSE./

          LOGICAL*4 L(1601)
      DATA L/
     1   161*.TRUE.,160*.FALSE.,160*.TRUE.,160*.FALSE.,160*.TRUE.,
     E   160*.FALSE.,160*.TRUE.,160*.FALSE.,160*.TRUE.,160*.FALSE./
          LOGICAL*4 Q(1601)
      DATA Q/
     1    161*.TRUE.,160*.FALSE.,160*.TRUE.,160*.FALSE.,160*.TRUE.,
     E    160*.FALSE.,160*.TRUE.,160*.FALSE.,160*.TRUE.,160*.FALSE./
          LOGICAL*4 LA(1601)/1601*.TRUE./,LB(1601)/1601*.TRUE./
          X = 0.
          Y = 0.

          DO 10 J = 1 , 1601
          DO 10 I = 1 , 1601
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
