      COMPLEX*8 A(10),B(10)
      DO 10 I=1,10
         B(I) = FLOAT(I)
         A(I) = B(I) ** I
   10 CONTINUE
      WRITE(6,*) A
      STOP
      END
