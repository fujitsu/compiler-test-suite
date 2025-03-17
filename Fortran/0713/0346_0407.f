          REAL       R41(10),R42(10),R43(10),R44(10),SR41,SR42
          REAL*8     R81(10),R82(10),R83(10),R84(10),SR81,SR82
          INTEGER    I41(10),I42(10),I43(10),I44(10),SI41,SI42
          LOGICAL    L41(10),L42(10),L43(10),L44(10),SL41,SL42
          COMPLEX    C81(10),C82(10),C83(10),C84(10),SC81,SC82
          COMPLEX*16 C161(10),C162(10),C163(10),C164(10),SC161,SC162
          DATA R41/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./,R42/10*2./
          DATA R43/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./,R44/10*1./
          DATA R81/1.D0,2.D0,3.D0,4.D0,5.D0,6.D0,7.D0,8.D0,9.D0,10.D0/
          DATA R82/10*2.D0/
          DATA R83/1.D0,2.D0,3.D0,4.D0,5.D0,6.D0,7.D0,8.D0,9.D0,10.D0/
          DATA R84/10*1.D0/
          DATA I41/1,2,3,4,5,6,7,8,9,10/,I42/10*2/
          DATA I43/1,2,3,4,5,6,7,8,9,10/,I44/10*1/
          DATA C81/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.),
     1             (6.,6.),(7.,7.),(8.,8.),(9.,9.),(10.,10.)/
          DATA C83/(1.,1.),(2.,2.),(3.,3.),(4.,4.),(5.,5.),
     1             (6.,6.),(7.,7.),(8.,8.),(9.,9.),(10.,10.)/
          DATA C82,C84/10*(1.0,1.0),10*(2.0,2.0)/
          DATA C161/(1.D0,1.D0),(2.D0,2.D0),(3.D0,3.D0),(4.D0,4.D0),
     1              (5.D0,5.D0),(6.D0,6.D0),(7.D0,7.D0),(8.D0,8.D0),
     2              (9.D0,9.D0),(10.D0,10.D0)/
          DATA C163/(1.D0,1.D0),(2.D0,2.D0),(3.D0,3.D0),(4.D0,4.D0),
     1              (5.D0,5.D0),(6.D0,6.D0),(7.D0,7.D0),(8.D0,8.D0),
     2              (9.D0,9.D0),(10.D0,10.D0)/
          DATA C162,C164/10*(1.D0,1.D0),10*(2.D0,2.D0)/
          DATA L41/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     1             .TRUE.,.FALSE.,.TRUE.,.FALSE./
          DATA L43/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     1             .TRUE.,.FALSE.,.TRUE.,.FALSE./
          DATA L42,L44/10*.TRUE.,10*.FALSE./
          LOGICAL L
          DATA L/.TRUE./

          DO 10 I = 1 , 10
            SR41 = R42(I) + R43(I)
            SR42 = R42(I) * R43(I)
            R41(I) = SR41
            R41(I) = SR42
            IF(L) THEN
               R44(I) = R41(I) + R42(I)
            ENDIF
 10       CONTINUE
            PRINT *,R44

          DO 20 I = 1 , 10
            SR81 = R82(I) + R83(I)
            SR82 = R82(I) * R83(I)
            R81(I) = SR81
            R81(I) = SR82
            IF(L) THEN
               R84(I) = R81(I) + R82(I)
            ENDIF
 20       CONTINUE
            PRINT *,R84

          DO 30 I = 1 , 10
            SI41 = I42(I) + I43(I)
            SI42 = I42(I) * I43(I)
            I41(I) = SI41
            I41(I) = SI42
            IF(L) THEN
               I44(I) = I41(I) + I42(I)
            ENDIF
 30       CONTINUE
            PRINT *,I44

          DO 40 I = 1 , 10
            SC81 = C82(I) + C83(I)
            SC82 = C82(I) * C83(I)
            C81(I) = SC81
            C81(I) = SC82
            IF(L) THEN
               C84(I) = C81(I) + C82(I)
            ENDIF
 40       CONTINUE
            PRINT *,C84

          DO 50 I = 1 , 10
            SC161 = C162(I) + C163(I)
            SC162 = C162(I) * C163(I)
            C161(I) = SC161
            C161(I) = SC162
            IF(L) THEN
               C164(I) = C161(I) + C162(I)
            ENDIF
 50       CONTINUE
            PRINT *,C164

          DO 60 I = 1 , 10
            SL41 = L42(I) .OR. L43(I)
            SL42 = L42(I) .AND. L43(I)
            L41(I) = SL41
            L41(I) = SL42
            IF(L) THEN
               L44(I) = L41(I) .OR. L42(I)
            ENDIF
 60       CONTINUE
            PRINT *,L44
            STOP
            END
