      REAL A(400)/400*1.0/,B(400)/400*2.0/
      DO 10 I=151,400
 10   A(I)=A(I-150)+B(I)
      WRITE(6,1000) A
 1000 FORMAT(F10.5)
      END