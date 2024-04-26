      REAL A(10),B(10)/10*1/,C(10)/10*2/
      DO 10 I=1,10
 10   A(I)=B(I)+C(I)
      WRITE(6,1000) A
 1000 FORMAT(F10.5)
      STOP
      END
