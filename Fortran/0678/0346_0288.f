      REAL*4 A(100),B(100),C(100),D(100)
      DATA A,B,C,D/100*1.,100*1.,100*1.,100*1./
      S1=1.
      S2=1.
      S3=1.
      DO 10 I=1,10
10     A(I)=(S1/B(I))*(S2/C(I))*(S3/D(I))
      PRINT *,A
      STOP
      END
