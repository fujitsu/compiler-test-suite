      REAL*4 A(100),B(100),C(100)
      DATA A/100*0.0/,B/100*1.0/,C/100*2.0/,N/100/,I/0/
      DO 10 I=1,N
         IF(I.EQ.3) GO TO 20
         A(I) = B(I) + C(I)
   10 CONTINUE
   20 CONTINUE
      WRITE(6,100) (A(I),I=1,N)
  100 FORMAT(1H ,3F5.1)
      STOP
      END
