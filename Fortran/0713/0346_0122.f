      DIMENSION  A(10,10),B(10,10)
      DATA  B/100*2.0/,A/100*1.0/
      DO 10 J=1,10
        IX = J
        DO 10 I=1,10
          A(I,IX) = B(I,J) * 2.0
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
