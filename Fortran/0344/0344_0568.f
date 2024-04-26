      INTEGER*4 A(5),B(5,5),D(5),E(5,5),G(5),H(5,5)
      INTEGER*2 C(5,5),F(5,5),K(5,5)
*
      DO 10 I=1,5
         A(I) = 1
         DO 10 J=1,5
            B(I,J) = 2
            B(I,J) = B(I,J) + 3
            C(I,J) = 4
   10 CONTINUE
      DO 20 I=1,5
         D(I) = 5
         DO 20 J=1,5
            E(I,J) = 6
            E(I,J) = E(I,J) + 7
   20       F(I,J) = 8
      DO 30 I=1,5
         G(I) = 9
         DO 40 J=1,5
            H(I,J) = 10
            H(I,J) = H(I,J) + 11
            K(I,J) = 12
   40    CONTINUE
   30 CONTINUE
      WRITE(6,*) A,B,C,D,E,F,G,H,K
      STOP
      END
