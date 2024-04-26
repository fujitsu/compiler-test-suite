      REAL A(10),B(10),C(10),D(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      DATA B/10.,8.,5.,10.,0.,0.,3.,10.,5.,7./
      DATA C,D/10*1.,10*2./
      DATA N,M/1,10/

      RMAX = 0
      SUM = 0

      DO 10 I=N,M
        SUM = SUM + A(I)
        IF (B(I).GT.RMAX) THEN
          RMAX = B(I)
        ENDIF
        A(I)=B(I)+C(I)+D(I)
10    CONTINUE

      WRITE(6,1) RMAX ,SUM , A
 1    FORMAT(5F10.5)
      STOP
      END
