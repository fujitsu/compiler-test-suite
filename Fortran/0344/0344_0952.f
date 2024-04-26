      REAL*4 A(100),B(100,10)
      DATA A/100*1.0/,B/1000*0.0/
      DO 10 I=1,100
         IF(I.GT.80) GO TO 20
         A(I) = (A(I) + I) / I
         DO 10 J=1,10
            B(I,J) = B(I,J) + J
   10 CONTINUE
   20 WRITE(6,*) A,B
      STOP
      END
