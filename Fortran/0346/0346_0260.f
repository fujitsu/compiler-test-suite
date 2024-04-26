      REAL*4 A(10),B(10),C(10),D(10)
      DATA A,B,C,D/10*5.,10*4.,10*3.,10*2./
      S1=1.
      S2=1.
      S3=1.
      DO 10 I=1,10
10     A(I)=(S1/B(I))*(S2/C(I))*(S3/D(I))
      PRINT *,'     TEST ITEM NO. 1     '
      WRITE(6,*) A
      DO 20 I=1,10
20     A(I)=(-S1/B(I))*(-S2/C(I))*(-S3/D(I))
      PRINT *,'     TEST ITEM NO. 2     '
      WRITE(6,*) A
      DO 30 I=1,10
30     A(I)=(-S1/(-B(I)))*(-S2/(-C(I)))*(-S3/(-D(I)))
      PRINT *,'     TEST ITEM NO. 3     '
      WRITE(6,*) A
      DO 40 I=1,10
40     A(I)=( S1/(-B(I)))*( S2/(-C(I)))*( S3/(-D(I)))
      PRINT *,'     TEST ITEM NO. 4     '
      WRITE(6,*) A
      STOP
      END
