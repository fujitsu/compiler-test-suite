      DIMENSION  B(10),A(10,10),C(10,10)
      DATA  B,A,C,N/10*1.0,100*2.0,100*3.0,10/
      DO 20 I=1,N
        DO 10 J=1,N-1
          A(I,J) = B(J)   + C(I,J)
          C(I,J) = B(J+1) * C(I,J)
   10   CONTINUE
   20 CONTINUE
      WRITE(6,*) A
      STOP
      END
