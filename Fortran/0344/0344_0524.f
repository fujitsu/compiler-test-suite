      PROGRAM MAIN
      REAL*4 A(10)
      DATA A/1,3,5,7,9,2,4,6,8,10/
C
      DO 10 I=1,10
         A(I) = A(I) ** 2
         A(I) = A(I) / 2
         WRITE(6,100) (A(J),J=1,10)
   10 CONTINUE
C
  100 FORMAT(1H ,10F7.1)
      STOP
      END
