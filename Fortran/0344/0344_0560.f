      INTEGER*4 A(5),B(5,5)
      REAL*4    C(5),D(5,5),E(5,5,5)
      REAL*8    F(5),G(5,5),H(5,5,5),M(5,5,5,5)
*
      DO 10 I=1,5
         A(I) = 1
         DO 10 J=1,5
            B(I,J) = 2
   10 CONTINUE
      DO 20 I=1,5
         C(I) = 3.0
         DO 20 J=1,5
            D(I,J) = 4.0
            DO 20 K=1,5
   20          E(I,J,K) = 5.0
      DO 30 I=1,5
         F(I) = 6.0
         DO 40 J=1,5
            G(I,J) = 7.0
            DO 50 K=1,5
               H(I,J,K) = 8.0
               DO 60 L=1,5
                  M(I,J,K,L) = 9.0
   60          CONTINUE
   50       CONTINUE
   40    CONTINUE
   30 CONTINUE
      WRITE(6,*) A,B,C,D,E,F,G,H,M
      STOP
      END
