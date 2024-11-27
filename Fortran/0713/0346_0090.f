      REAL*8 A(10),B(10,10),C(10,10)
      DATA  A,B,C/10*2.0,100*1.0,100*4.0/
      DO 10 J=1,10
        DO 10 I=1,10
          A(I) = B(I,J) + C(I,J)
          A(I) = B(I,J) * C(I,J)
          A(I) = B(I,J) / C(I,J)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
