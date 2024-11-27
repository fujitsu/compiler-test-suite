      DIMENSION  A(100),B(100),C(100),D(100)
      DATA  A,B,C,D/100*1.0,100*2.0,100*2.0,100*2.0/
      S1 = 1.0
      S2 = 1.0
      S3 = 1.0
      DO 10 I=1,100
        A(I) = (S1/B(I)) * (S2/C(I)) * (S3/D(I))
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
