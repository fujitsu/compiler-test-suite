      REAL*8  A(5,5),C(5,5),F(5,5)
      REAL*4  B(5),D(5),E(5),G(5)
*
      DO 10 I=1,5
         DO 20 J=1,5
            A(I,J) = 1.0
   20    CONTINUE
         B(I) = 2.0
   10 CONTINUE
      DO 30 I=1,5
         DO 40 J=1,5
   40       C(I,J) = 3
   30    D(I) = 4
      DO 50 I=1,5
         E(I) = 5.0
         DO 60 J=1,5
            F(I,J) = 6.0
   60    CONTINUE
         G(I) = 7.0
   50 CONTINUE
      WRITE(6,*) A,B,C,D,E,F,G
      STOP
      END
