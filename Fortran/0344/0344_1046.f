      PROGRAM MAIN
      COMPLEX*16 A(100),B(100),RC
      PARAMETER(RC=(1.5,0.0))
C
      DO 10 I=1,100
         A(I) = I
         B(I) = A(I) * RC
   10 CONTINUE
C
      WRITE(6,100) B
  100 FORMAT(1H ,10F7.2)
      STOP
      END
