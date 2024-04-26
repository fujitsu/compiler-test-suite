      INTEGER*4 A(5),C(5,5),D(5),F(5,5),G(5),K(5,5)
      INTEGER*2 B(5),E(5),H(5)
*
      DO 10 I=1,5
         A(I) = I
         A(I) = A(I) + 1
         B(I) = I
         DO 10 J=1,5
            C(I,J) = 2
   10 CONTINUE
      DO 20 I=1,5
         D(I) = I
         D(I) = D(I) + 1
         E(I) = I
         DO 20 J=1,5
   20       F(I,J) = 4
      DO 30 I=1,5
         G(I) = I
         G(I) = G(I) + 1
         H(I) = I
         DO 40 J=1,5
            K(I,J) = 6
   40    CONTINUE
   30 CONTINUE
      WRITE(6,*) A,B,C,D,E,F,G,H,K
      STOP
      END
