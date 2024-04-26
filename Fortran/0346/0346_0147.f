      REAL*4 A(10),B(10),C(10),D(10)
      REAL*4 A1(10),A2(10),A3(10),A4(10)
      DATA A,B,C,D/10*2.,10*2.,10*2.,10*2./
      S1=50.
      S2=20.
      S3=30.
      DO 10 I=1,10
       A1(I)=(S1/B(I))/(S2/C(I))/(S3/D(I))
       A2(I)=(-S1/B(I))/(-S2/C(I))/(-S3/D(I))
       A3(I)=(-S1/(-B(I)))/(-S2/(-C(I)))/(-S3/(-D(I)))
10     A4(I)=( S1/(-B(I)))/( S2/(-C(I)))/( S3/(-D(I)))
      PRINT *,A1
      PRINT *,A2
      PRINT *,A3
      PRINT *,A4
      STOP
      END
