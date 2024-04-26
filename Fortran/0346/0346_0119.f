      DIMENSION  A(10),B(10,10),C(10),D(10)
      DATA  C,B,N/10*2.0,100*2.0,10/
      EQUIVALENCE (A,C)
      DO 10 J=1,10
        DO 10 I=1,N
          A(I) = B(I,J) + C(I)
          D(I) = A(I)   * B(I,J)
   10 CONTINUE
      WRITE(6,*) A,D
      STOP
      END
