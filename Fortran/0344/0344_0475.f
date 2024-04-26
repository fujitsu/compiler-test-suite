C
      REAL*4 A(100),B(100),C(100),D(100)
      INTEGER J
      DATA A/100*0/,B/100*1/,C/100*2/,D/100*0/
C
      DO 10 I=1,100
         J = 0
    1    J = J + 1
         A(J) = B(J) + C(J)
         IF(J.NE.10) GOTO 1
         WRITE(6,99) A(I)
   10 CONTINUE
C
      DO 20 J=1,100
         D(J) = B(J) + C(J)
   20 CONTINUE
      WRITE(6,99) (D(I),I=1,100)
   99 FORMAT(10F5.1)
      STOP
      END
