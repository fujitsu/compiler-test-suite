          REAL ZA(20),WA(20),YA(20)
          REAL YS(10),WS(10),ZS(10)
          REAL YE(10),WE(10),ZE(10)
          EQUIVALENCE (ZA(1),ZS(1)),(ZA(11),ZE(1))
          EQUIVALENCE (YA(1),YS(1)),(YA(11),YE(1))
          EQUIVALENCE (WA(1),WS(1)),(WA(11),WE(1))
          INTEGER IX(20)
          DATA IX/-9,-8,-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,10/
          DATA ZA/20*2.0/
          DATA YA/20*4.0/
          DATA WA/20*2.0/
          REAL R1(20),R2(20)
          DATA R1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,
     E            10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
          DATA R2/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,
     E            10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
          LOGICAL LSW
          REAL X(20),Y(20),ZZ(20)
          DATA X,Y,ZZ/60*1.0D0/

         DO 20 I = 1 , 20
            LSW = R1(I) .GT. R2(I)
            IF( LSW ) R1(I) = YE(IX(I)) + WE(IX(I))
            IF( LSW ) R2(I) = YE(IX(I)) - WE(IX(I))
            IF( LSW ) THEN
                ZE(IX(I)) =YE(IX(I)) + WE(IX(I))
            ELSE
               IF (I.GT.10) THEN
                  ZE(IX(I)) =YE(IX(I)) - WE(IX(I))
               ENDIF
            ENDIF
            X(I) = Y(I) - R1(I)
            IF( LSW ) Y(I)  = X(I) - R2(I)
            IF( LSW ) ZZ(I) = Y(I) - R1(I)
 20      CONTINUE

            PRINT *,ZA ,ZZ
            END
