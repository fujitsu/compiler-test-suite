      REAL*8 A1(1024),B1(1024),C1(1024),D1(1024),E1(1024)
      DATA  A1,B1,C1,D1,E1/1024*1.0,1024*2.0,1024*3.0,1024*4.0,1024*5.0/
      REAL*4 A2(1024,10),B2(1024,10),C2(1024,10)
      DATA A2,B2,C2/10240*2.0,10240*3.0,10240*4.0/
      DATA  S/5.0/
      DO 10 J=1,10
        DO 10 I=1,1024
          A1(I) = B2(I,J) * C2(I,J)
          B2(I,J) = B1(I) + C1(I)
          D1(I) = S / A2(I,J) - E1(I)
   10 CONTINUE
      WRITE(6,*) A1,B2,D1
      STOP
      END