          INTEGER IR4(10),IR8(10)
          REAL*4 R41(10)
          REAL*8 R81(10)
          LOGICAL L(10)
          DATA R41/-1.,-2.,-3.,-4.,-5.,-6.,-7.,-8.,-9.,-10./
          DATA IR4/-1,-3 ,-5 ,-7 ,-9 ,-2 ,-4 ,-6 ,-8 ,-12 /
          DATA R81/-10.D0,-9.D0,-8.D0,-7.D0,-6.D0,-5.D0,
     E             -4.D0,-3.D0,-2.D0,-1.D0/
          DATA IR8/-9   ,-8   ,-7   ,-6   ,-5   ,-4   ,
     E             -3   ,-2   ,-1   ,-10   /
          DATA L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     E           .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
          DO 10 I = 1 , 10
          IF( L(I) ) IR4(I) = INT(R41(I))
          IF( L(I) ) IR8(I) = INT(R81(I))
          IF( L(I) ) IR4(I) = INT(R41(I))
          IF( L(I) ) IR8(I) = INT(R81(I))
 10       CONTINUE
          PRINT *,IR4,IR8
          END
