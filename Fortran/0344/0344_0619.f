      REAL A(350)/350*1.0/,B(200)/200*2.0/
      DO 10 I=1,200
 10   A(I)=A(I+150)+B(I)
      WRITE(6,1000) A
 1000 FORMAT(F10.5)
      STOP
      END
