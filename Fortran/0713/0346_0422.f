          REAL       R41(10),R42(10),R43(10),R44(10),SR41,SR42
          DATA R41/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
          DATA R42/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
          DATA R43/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
          DATA R44/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
          LOGICAL L,LL(10)/10*.TRUE./
          DATA L/.TRUE./
          DO 10 I = 1 , 10
            IF( LL(I) ) THEN
                 SR41 = R41(I) + R42(I)
                 SR42 = R42(I) * R43(I)
            ENDIF
            IF(.NOT.L) THEN
                SR41 = R43(I) + R42(I)
            ENDIF
            IF( LL(I) ) R44(I) = R41(I) + R42(I)
 10       CONTINUE
            PRINT *,R44
            STOP
            END
