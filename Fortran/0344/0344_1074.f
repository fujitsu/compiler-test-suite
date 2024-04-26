      REAL*4 A(100)
      DATA A/100*2.8/,N/0/
C
      DO 10 I=1,100
         IF(I.GT.50) GO TO 20
         A(I) = A(I) + SIN(FLOAT(N))
         N = N + 1
         A(N) = A(N) + 1
   10 CONTINUE
C
   20 WRITE(6,100) A
  100 FORMAT(1H ,5F15.7)
      STOP
      END
