      REAL*4  A(20),B(20),C(20)
      DATA  A/20*2./,B/20*1./,C/20*3./
      S1=0.
      S2=0.
      S3=0.
      DO 10 I=2,18
        S1 = S1 + A(I)
        S2 = S2 - B(I)
        S3 = S3 + C(I)
  10  CONTINUE
      WRITE(6,600) S1
      WRITE(6,600) S2
      WRITE(6,600) S3
 600  FORMAT(1H ,F12.3)
      STOP
      END
