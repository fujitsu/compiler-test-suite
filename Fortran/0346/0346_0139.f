      REAL*4 A(10),B(10),C(10),D(10)
      REAL*8 A1(10),A2(10),A3(10),A4(10)
      DATA A,B,C,D/10*1.,10*2.,10*3.,10*4./
      S1=5.
      S2=2.
      S3=3.
      DO 10 I=1,10
       A1(I)=(S1+B(I))+(S2+C(I))+(S3+D(I))
       A2(I)=(-S1+B(I))+(-S2+C(I))+(-S3+D(I))
       A3(I)=(-S1+(-B(I)))+(-S2+(-C(I)))+(-S3+(-D(I)))
10     A4(I)=( S1+(-B(I)))+( S2+(-C(I)))+( S3+(-D(I)))
      PRINT *,A1
      PRINT *,A2
      PRINT *,A3
      PRINT *,A4
      STOP
      END
