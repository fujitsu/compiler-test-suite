      DIMENSION  A(10),B(10),C(10),D(10)
      DATA  A,B,C,D/10*1.0,10*2.0,10*3.0,10*4.0/
      DATA  S1,S2,S3/10.0,20.0,30.0/
      DO 10 I=1,10
        A(I) = (S1 + B(I)) + (S2 + C(I)) + (S3 + D(I))
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
