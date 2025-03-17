      DIMENSION  A(10),B(10)
      DATA  A,B/10*1.0,10*2.0/
      DO 10 I=1,10
        A(I) = A(I) + B(I)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
