          REAL     A(10),B(10),C(10),D(10),Z(10)
          LOGICAL L1(10),L2(10)
          DATA A/1.,3.,5.,7.,9.,2.,4.,6.,8.,0./
          DATA B/1.,3.,5.,7.,9.,2.,4.,6.,8.,0./
          DATA C/1.,2.,1.,2.,1.,2.,1.,2.,1.,2./
          DATA D/0.,8.,6.,4.,2.,9.,7.,5.,3.,1./
          DATA Z/1.,4.,7.,0.,3.,6.,9.,2.,5.,8./
          DATA L1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     E           .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
          DATA L2/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     E           .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
          LOGICAL*4 L(10)
          DATA L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     E           .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
          LOGICAL*4 Q(10)
          DATA Q/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     E           .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
          LOGICAL*4 LA(10)/10*.TRUE./,LB(10)/10*.TRUE./
          X = 0.
          Y = 0.
          DO 10 J = 1 , 10
          DO 10 I = 1 , 10
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
