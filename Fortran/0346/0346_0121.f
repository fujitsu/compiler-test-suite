      DIMENSION  A(10),B(10,10)
      DATA  B/100*2.0/,A/10*1.0/
      DO 10 J=1,10
        B(J,J) = A(J)
        DO 10 I=1,10
          A(I) = B(I,J) * 2.0
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
