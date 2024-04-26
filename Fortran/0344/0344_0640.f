      REAL A(10)/10*1.0/,B(10)/10*2.0/
      DO 10 I=6,10
 10   A(I)=A(I-5)+B(I)
      WRITE(6,1000) A
 1000 FORMAT(F10.5)
      STOP
      END
