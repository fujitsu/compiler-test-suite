      DIMENSION A(100,100),B(100),C(50,50)
      DATA  A,B,C/10000*2.0,100*3.0,2500*1.0/
      DO 30 K=1,50
        DO 20 J=1,50
          DO 10 I=1,50
            C(I,J) = A(I,K)
            B(I)   = A(I,J)
   10     CONTINUE
   20   CONTINUE
   30 CONTINUE
      WRITE(6,*) B,C
      STOP
      END
