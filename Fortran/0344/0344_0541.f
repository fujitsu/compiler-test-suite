      PROGRAM MAIN
      REAL*4  AA,BB,PAI,DIV,U(10),NX
      REAL*8  ABC
      DATA NX/10/,PAI/3.14/
C
      DO 10 K=1,NX
         AA  = 2.0D0 * K - 1.0D0
         BB  = 2.0D0 * NX + 1.0D0
         ABC = AA / BB
         ABC = DCOS( ABC * PAI )
         DIV = 2.0D0 * (1.0D0 - ABC)
   10    U(K) = 1.0D0 / DIV
C
      WRITE(6,100) U
  100 FORMAT(1H ,10F7.1)
      STOP
      END
