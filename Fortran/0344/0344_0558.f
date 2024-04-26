      REAL*4    A(5,5),E(5,5,5,5)
      REAL*8    B(5,5),F(5,5,5,5)
      INTEGER*4 C(5,5,5)
      INTEGER*2 D(5,5,5)
*
      DO 10 I=1,5
      DO 10 J=1,5
         A(I,J) = 1.0
         A(I,J) = A(I,J) + 1.0
         B(I,J) = 1.0
   10 CONTINUE
      DO 20 I=1,5
      DO 20 J=1,5
      DO 20 K=1,5
         C(I,J,K) = 2.D0
         C(I,J,K) = C(I,J,K) + 1.D0
   20    D(I,J,K) = 3.D0
      DO 30 I=1,5
         DO 40 J=1,5
            DO 50 K=1,5
               DO 60 L=1,5
                  E(I,J,K,L) = 3
                  E(I,J,K,L) = E(I,J,K,L) + 3
                  F(I,J,K,L) = 3
   60          CONTINUE
   50       CONTINUE
   40    CONTINUE
   30 CONTINUE
      WRITE(6,*) A,B,C,D,E,F
      STOP
      END
