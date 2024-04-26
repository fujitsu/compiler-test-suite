      REAL*4 A(100)
      DATA A/100*1.0/
      DO 10 I=1,100
         IF(I.GT.80) GO TO 20
         A(I) = A(I) + I
   10 CONTINUE
   20 WRITE(6,*) A
      STOP
      END
