          REAL *4 C4(10),D4(11)
          REAL *8 A8(10),B8(10),C8(10),D8(10)
          DATA D4/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,11./
          DATA D8/1.D0,2.D0,3.D0,4.D0,5.D0,6.D0,7.D0,8.D0,9.D0,10.D0/
          DO 1 I=1,10
            B8(I) = D8(I)*2
            A8(I) = D4(I+1)
            C4(I) = B8(I)-D4(I)
            C8(I) = A8(I)/D4(I)
1         CONTINUE
          PRINT *,C4,C8
          STOP
          END
