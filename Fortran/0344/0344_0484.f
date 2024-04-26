      REAL*4 A(250),B(250),C(250)
      INTEGER J/1/
      DATA A/250*0/,B/250*1/,C/250*2/
      DO 10 I=1,30,J
         A(I) = B(I) + C(I)
         IF (I.GT.20) J=J+1
   10 CONTINUE
      WRITE(6,99) (A(I),I=1,40)
   99 FORMAT(10F5.1)
      STOP
      END
