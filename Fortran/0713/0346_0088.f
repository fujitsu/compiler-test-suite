      DIMENSION  A(1024),B(10,1024),C(1024),D(10,1024),E(1024)
      DATA  A,B,C,D,E/1024*1.0,10240*2.0,1024*3.0,10240*4.0,1024*5.0/
      DIMENSION  A1(10),B1(10,10),C1(10),D1(10,10),E1(10)
      DATA  A1,B1,C1,D1,E1/10*6.0,100*7.0,10*8.0,100*9.0,10*10.0/
      DIMENSION  A2(512),B2(10,512),C2(512),D2(10,512),E2(512)
      DATA A2,B2,C2,D2,E2/512*11.0,5120*12.0,512*13.0,5120*14.0,
     *                    512*15.0/
      DO 40 I=1,10
        DO 10 J=1,1024
          A(J)   = B(I,J) + C(J)
          D(I,J) = E(J)   * A(J)
   10   CONTINUE
        DO 20 J=1,10
          A1(J)   = B1(I,J) + C1(J)
          D1(I,J) = E1(J)   * A1(J)
   20   CONTINUE
        DO 30 J=1,512
          A2(J)   = B2(I,J) + C2(J)
          D2(I,J) = E2(J)   * A2(J)
   30   CONTINUE
   40 CONTINUE
      WRITE(6,*) A,D,A1,D1,A2,D2
      STOP
      END
