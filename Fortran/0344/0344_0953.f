      REAL*4 A(100),B(100)
      DATA A/100*1.0/,B/100*0.0/
      DO 10 I=3,100
         IF(I.GT.80) GO TO 20
         A(I) = (A(I) + I) / I
         A(I) = A(I) * 0.3
         B(I) = B(I-2) + I
   10 CONTINUE
   20 WRITE(6,*) A,B
      STOP
      END
