      REAL A(10),B/1.0/
      DO 10 I=1,10
      A(I)=I
 10   B=A(I)+B
      WRITE(6,1000) A
 1000 FORMAT(F10.5)
      STOP
      END
