      PROGRAM MAIN
      REAL*4  G,Z(10,10)
      DATA I/1/,J/5/,L/10/
      DATA Z/50*0.3,50*3.3/
C
      G = 0.0
      DO 10 K=1,L
   10    G = G + Z(I,K) * Z(K,J)
C
      WRITE(6,100) G
  100 FORMAT(1H ,F7.1)
      STOP
      END
