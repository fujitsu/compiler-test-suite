      DIMENSION  A(10,10),B(10,10)
      DATA  A/100*3.0/
      DATA  B,N/100*2.0,10/
      IX1 = 1
      DO 10 J=1,10
        DO 10 I=1,N
          A(IX1,I) = B(I,J)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
