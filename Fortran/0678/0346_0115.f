      DIMENSION  A(10),B(10,10),C(10,10)
      DATA  A,B,C,N/10*1.0,100*2.0,100*3.0,10/
      DO 20 I=1,N
        DO 10 J=1,N-1
          A(J)   = B(I,J) + C(I,J)
          A(J+1) = B(I,J) * C(I,J)
   10   CONTINUE
   20 CONTINUE
      WRITE(6,*) A
      STOP
      END
