      DIMENSION  A(10,10),B(10,10)
      DATA  A/100*4.0/
      DATA  B/100*2.0/
      DO 10 J=1,10
        DO 10 I=1,10
          A(1,I) = B(I,J)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
