      REAL*4 A(100)
      DATA A/100*1.0/,J/1/
      DO 10 I=1,100
         IF(J.GT.80) GO TO 20
         A(J) = A(J) + I
         J = J + 1
   10 CONTINUE
   20 WRITE(6,*) A,J
      STOP
      END
