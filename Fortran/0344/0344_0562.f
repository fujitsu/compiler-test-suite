      INTEGER*4 B(5,5),D(5,5),F(5,5)
      INTEGER*2 A(5),C(5),E(5)
*
      DO 10 I=1,5
         A(I) = 1
         DO 10 J=1,5
            B(I,J) = 2
   10 CONTINUE
      DO 20 I=1,5
         C(I) = 3
         DO 20 J=1,5
   20       D(I,J) = 4
      DO 30 I=1,5
         E(I) = 5
         DO 40 J=1,5
            F(I,J) = 6
   40    CONTINUE
   30 CONTINUE
      WRITE(6,*) A,B,C,D,E,F
      STOP
      END
