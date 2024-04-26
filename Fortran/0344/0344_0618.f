      REAL A(20)/20*1.0/,B(50)/50*2.0/
      DO 10 I=1,10
 10   A(I)=A(I+5)+B(I)
      WRITE(6,1000) A
 1000 FORMAT(F10.5)
      STOP
      END
