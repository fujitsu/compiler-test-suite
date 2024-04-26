      REAL*4 A(100),B(100),C(100)
      DATA A/100*0.0/,B/100*1.0/,C/100*2.0/,N/100/,I/0/
   10 I = I + 1
         A(I) = B(I) + C(I)
      IF(I.NE.N) GO TO 10
      WRITE(6,100) (A(I),I=1,N)
  100 FORMAT(3F5.1)
      STOP
      END
