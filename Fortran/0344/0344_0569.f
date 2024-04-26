      REAL*4  A(5,5),C(5),D(5,5),F(5),G(5),H(5,5),L(5)
      REAL*8  B(5,5),E(5,5),K(5,5)
*
      DO 10 I=1,5
         DO 20 J=1,5
            A(I,J) = 1.0
            A(I,J) = A(I,J) + 2.0
            B(I,J) = 3.0
   20    CONTINUE
         C(I) = 4.0
   10 CONTINUE
      DO 30 I=1,5
         DO 40 J=1,5
            D(I,J) = 5.0
            D(I,J) = D(I,J) + 6.0
   40       E(I,J) = 7.0
   30    F(I) = 8.0
      DO 50 I=1,5
         G(I) = 9.0
         DO 60 J=1,5
            H(I,J) = 10.0
            H(I,J) = H(I,J) + 11.0
            K(I,J) = 12.0
   60    CONTINUE
         L(I) = 13.0
   50 CONTINUE
      WRITE(6,*) A,B,C,D,E,F,G,H,K,L
      STOP
      END
