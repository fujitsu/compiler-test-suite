      COMPLEX*8  A(10),B(10)
      DATA       A/10*(0.0,0.0)/,B/10*(1.0,2.0)/
      DO 10 I=1,10
        A(I)=B(I)
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
