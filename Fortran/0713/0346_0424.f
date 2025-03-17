          REAL A(10),B(10),C(10),Z(10)
          DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
          DATA B/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
          DATA C/7.,4.,1.,8.,5.,2.,9.,3.,2.,1./
          DATA Z / 10*0.0  /
          LOGICAL L1(10),L2(10),L3(10),LX(10)
          DATA LX/10*.FALSE./
          DATA L2/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     E            .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
          DATA L3/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     E            .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
          INTEGER IA(10),IB(10)
          DATA IA/1,2,3,4,5,6,7,8,9,10/
          DATA IB/10,9,8,7,6,5,4,3,2,1/
          L1 = .FALSE.
          DO 10 J = 1 , 7
          DO 10 I = 1 , 10
            LX(I) = A(IA(I)) .EQ. B(IB(I))
            Z(I) = A(I) - B(I) - 1.0+ C(I)
            IF( I .LE. 5 ) THEN
              IF( J .LE. 5 ) THEN
                L1(I) = L2(I) .AND. L3(I)
                IF( L1(I) )  Z(I) = A(I) + B(I) - 1.0
              ELSE
                Z(I) = A(I) - B(I) - 1.0
              ENDIF
            ENDIF
            IF( J .LE. 5 ) THEN
                IF( L1(I) )  Z(I) = A(I) + B(I) - 1.0
            ENDIF
            IF( I .LE. 5 ) THEN
              IF( J .LE. 5 ) THEN
                L1(I) = L2(I) .AND. L3(I)
                IF( L1(I) )  Z(I) = A(I) + B(I) - 1.0- C(I)
              ELSE
                Z(I) = A(I) - B(I) - 1.0
              ENDIF
            ENDIF
 10       CONTINUE
          PRINT *,Z,LX,L1
          END
