      DO 10 I=1,100
   10 CALL SUB1(I)
      STOP
      END
C
      SUBROUTINE SUB1(M)
      REAL*4 A(100)
      DATA A/100*3.7/
C
      N = 100
      DO 10 I=1,100
         IF(I.EQ.M) GO TO 20
         A(N) = A(N) - 1
         N = N - 1
   10 CONTINUE
C
   20 WRITE(6,100) A
  100 FORMAT(1H ,10F7.1)
      RETURN
      END
