      REAL*4 A(10),B(10),C(10),D(10)
      DATA A,B,C,D/10*5.,10*4.,10*3.,10*2./
      S1=5.
      S2=2.
      S3=3.
      DO 11 I=1,10
11     A(I)=(S1+B(I))+(S2+C(I))+(S3+D(I))
      PRINT *,'     TEST ITEM NO. 1      '
      PRINT *,A
      DO 21 I=1,10
21     A(I)=(-S1+B(I))+(-S2+C(I))+(-S3+D(I))
      PRINT *,'     TEST ITEM NO. 2      '
      PRINT *,A
      DO 31 I=1,10
31     A(I)=(-S1+(-B(I)))+(-S2+(-C(I)))+(-S3+(-D(I)))
      PRINT *,'     TEST ITEM NO. 3      '
      PRINT *,A
      DO 41 I=1,10
41     A(I)=( S1+(-B(I)))+( S2+(-C(I)))+( S3+(-D(I)))
      PRINT *,'     TEST ITEM NO. 4      '
      PRINT *,A
      STOP
      END
