          REAL *4 B4(10)
          REAL *8 A8(10),B8(10),C8(10),D8(10)
          DATA D8/1.D0,2.D0,3.D0,4.D0,5.D0,6.D0,7.D0,8.D0,9.D0,10.D0/
          DO 1 I=1,10
            A8(I) = D8(I)*2
            C8(I) = D8(I)+1.0
            B4(I) = D8(I)+D8(I)
            B8(I) = A8(I)/C8(I)
1         CONTINUE
          PRINT *,B4,B8
          STOP
          END
