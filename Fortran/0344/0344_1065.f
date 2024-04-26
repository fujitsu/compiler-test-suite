      REAL*4  R4A1(10),R4B1(10)
      INTEGER I4A1(11)
      DATA R4A1/10*0.1/,R4B1/10*0.2/
      EQUIVALENCE(I,I4A1(1))
C
      DO 10 I=1,10
         I4A1(I+1) = I
         R4B1(I)   = R4A1(I)
         R4A1(I)   = R4B1(I) + 1
 10   CONTINUE
      WRITE(6,*) 'R4A1 = ',R4A1
C
      STOP
      END
