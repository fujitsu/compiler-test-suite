      REAL*8 A(10),B(10,10),C(10,10)
      DATA  A,B,C/10*1.0,100*2.0,100*3.0/
      DO 30 J=1,10
       DO 10 I=1,10
         B(I,J) = A(I) * C(I,J)
   10  CONTINUE
       DO 20 I=1,10
         A(I) = B(I,J) + C(I,J)
   20  CONTINUE
   30 CONTINUE
      WRITE(6,*) A,B
      STOP
      END
