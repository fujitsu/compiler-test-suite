      DIMENSION  A(10),B(10),C(10),D(10)
      DATA  A,B,C,D/10*1.0,10*8.0,10*2.0,10*2.0/
      DATA  S1,S2,S3/10.0,20.0,30.0/
      DO 10 I=1,10
        A(I) = B(I) / C(I) / ((S1 + B(I)) + (S2 + C(I))) / D(I) * S3
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
