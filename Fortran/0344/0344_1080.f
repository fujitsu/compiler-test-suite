      REAL*4 A(100)
      DATA A/100*0.7/,N/0/
C
      DO 10 I=1,100
         IF(I.GT.50) GO TO 20
         N = N + 2
         A(I) = A(I) / COS(FLOAT(N))
   10 CONTINUE
C
   20 WRITE(6,100) A
  100 FORMAT(1H ,5F15.7)
      STOP
      END
