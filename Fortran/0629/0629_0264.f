      REAL*4 A(10),B
      A=2
      B=0
      DO 10 I=1,9
         B    = A(I)
   10 CONTINUE
      write(6,*) B
      END
