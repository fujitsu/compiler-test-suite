      REAL A(10)/10*1.0/,B(10)/10*2.0/
      DO 10 I=1,10
 10   A(1)=A(I)+B(I)
      WRITE(6,1000) A
 1000 FORMAT(F10.5)
      END
