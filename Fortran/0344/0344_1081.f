      REAL*4 A(100)
      DATA A/100*3.5/,N/101/
C
      DO 10 I=1,100
         IF(I.EQ.N) GO TO 20
         N = N - 1
         A(N) = A(N) + N
   10 CONTINUE
C
   20 WRITE(6,100) A
  100 FORMAT(1H ,10F7.1)
      STOP
      END
