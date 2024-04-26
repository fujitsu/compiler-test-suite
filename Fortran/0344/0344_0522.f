      PROGRAM MAIN
      REAL*4 A(10),B(10,10)
      DATA A/10*0.0/,B/100*1.1/
C
      DO 10 I=1,10
         A(I) = I
         DO 10 J=1,10
            IF(A(I).EQ.5) GO TO 20
            B(I,J) = A(I)
   10 CONTINUE
C
   20 CONTINUE
      WRITE(6,100) B,A
  100 FORMAT(1H ,10F7.1)
      STOP
      END
