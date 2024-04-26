      INTEGER*4 A(5,5),B(5)
      REAL*4    C(5,5,5),D(5,5),E(5)
      REAL*8    F(5),G(5,5),H(5,5,5),M(5,5,5,5)
      REAL*8    N(5,5,5),O(5,5),P(5)
*
      DO 10 I=1,5
         DO 20 J=1,5
            A(I,J) = 1
   20    CONTINUE
         B(I) = 2
   10 CONTINUE
      DO 30 I=1,5
         DO 40 J=1,5
            DO 50 K=1,5
   50          C(I,J,K) = 3.0
   40       D(I,J) = 4.0
   30    E(I) = 5.0
      DO 60 I=1,5
         F(I) = 6.0
         DO 70 J=1,5
            G(I,J) = 7.0
            DO 80 K=1,5
               H(I,J,K) = 8.0
               DO 90 L=1,5
                  M(I,J,K,L) = 9.0
   90          CONTINUE
               N(I,J,K) = 10.0
   80       CONTINUE
            O(I,J) = 11.0
   70    CONTINUE
         P(I) = 12.0
   60 CONTINUE
      WRITE(6,*) A,B,C,D,E,F,G,H,M,N,O,P
      STOP
      END
