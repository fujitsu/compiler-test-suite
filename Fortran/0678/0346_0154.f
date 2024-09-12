          REAL *4 A4(10),D4(10)
          REAL *8 A8(10),D8(10),C8(10)
          DATA D4/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
          DATA D8/1.D0,2.D0,3.D0,4.D0,5.D0,6.D0,7.D0,8.D0,9.D0,10.D0/
          DO 1 I=1,10
            A4(I) = D8(I)
            A8(I) = D4(I)
            C8(I) = D8(I)
1         CONTINUE
          PRINT *,A4,A8,C8
          STOP
          END
