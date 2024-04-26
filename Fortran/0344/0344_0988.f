      INTEGER*4  A(100)
      INTEGER*2  B(100)
      LOGICAL*1  C(100)
      DATA A/100*1/,B/100*2/
C
      DO 10 I=1,100
         C(I) = B(I).EQ.A(I)
   10 CONTINUE
      WRITE(6,1) C
    1 FORMAT(1H ,10L5)
      STOP
      END
