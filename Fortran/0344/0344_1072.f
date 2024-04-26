      REAL*4 A(100)
      DATA A/100*2.6/,N/0/
C
      DO 10 I=1,100
         IF(I.GT.26) GO TO 20
         N = N + 1
         A(I) = A(I) / N
   10 CONTINUE
C
   20 WRITE(6,100) A
  100 FORMAT(1H ,5F15.7)
      STOP
      END
