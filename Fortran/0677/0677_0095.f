      INTEGER*4 A1(10),A2(10),A3(10),C(10),S1,S2,S3
      DATA C/10*2/,S1/1/,S2/1/,S3/1/

      DO 10 I=1,10
          A1(I)=S1+C(I)
          A2(I)=S1-C(I)
10        A3(I)=S1*C(I)
      WRITE(6,*)A1,A2,A3,S1,S2,S3,C
      END
