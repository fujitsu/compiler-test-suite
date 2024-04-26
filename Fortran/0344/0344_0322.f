      REAL*4 A(50)/50*1./
      A(1) = 1.0
      A(2) = 1.0
      DO 10 I=3,50,3
         A(I) = FLOAT(I)
         T =  A(I) * COS(FLOAT(I))
         A(I) = T + A(I-2)
   10 CONTINUE
      WRITE(6,1) A
    1 FORMAT(5E15.6)
      STOP
      END
