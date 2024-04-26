      PROGRAM MAIN
      REAL*4 A(10)
      DATA A/1,3,5,7,9,2,4,6,8,10/
C
      DO 10 I=1,10
         IF(A(I).EQ.I) GO TO 20
         IF(MOD(A(I),2).EQ.0) GO TO 30
         A(I) = A(I) + 1
   10 CONTINUE
      A(10) = A(9) + A(8)
   20 A(I) = A(I) + 1
   30 A(I) = A(I) + 1
C
      WRITE(6,100) A
  100 FORMAT(1H ,10F7.1)
      STOP
      END
