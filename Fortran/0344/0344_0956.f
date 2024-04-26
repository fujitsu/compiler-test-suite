      REAL*4 A(100)
      DO 10 I=1,100
         IF(I.GT.50) GO TO 20
            A(I) = I
            A(I+50) = I
   10 CONTINUE
   20 WRITE(6,*) A
      STOP
      END
