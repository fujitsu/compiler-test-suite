      REAL*4   A(10)
      REAL*8   S,B(10),C(10)
      DATA     S/5.D1/
      DATA     A,B,C/10*1.0,10*3.0D0,10*3.0D0/
      DO 10 I=1,10
        A(I) = B(I) / (S / C(I))
   10 CONTINUE
      WRITE(6,11) A
11    FORMAT(1H ,4(E13.6,3X) )
      STOP
      END
