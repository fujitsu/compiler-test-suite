      REAL*4 A(100),B(100)
      DATA A/100*1.1/,B/100*3.2/
      DO 10 I=1,99
         KK = I + A(I)
         B(I) = B(KK) + B(I) + I
   10 CONTINUE
      WRITE(6,*) A,B
      STOP
      END
