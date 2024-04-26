      REAL*4 A(100)
      DATA A/100*9.2/,N/0/
C
      DO 10 I=1,100
         IF(N.EQ.1) GO TO 20
         N = N + 1
         A(N) = A(N) * 3.14
   10 CONTINUE
C
   20 WRITE(6,100) A
  100 FORMAT(1H ,5F15.7)
      STOP
      END
