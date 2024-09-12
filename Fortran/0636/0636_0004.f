      PROGRAM MAIN
      INTEGER A(10),B(10),C(10),D(10),E(10),F(10),G(10)
      INTEGER H(10),J(10),K(10),L(10),M(10),O(10),P(10)
      INTEGER W(10)
      DATA    N/10/
      DO 10 I = 1,N
   10   A(I) = I
      DO 20 I = 1,N
   20   B(I) = 3*I
      DO 30 I = 1,N
   30   C(I) = 2*I - 1
      DO 40 I = 1,N
   40   D(I) = I*I
      DO 50 I = 1,N
   50   E(I) = I*I - I
      DO 60 I = 1,N
   60   F(I) = I*I + I
      DO 70 I = 1,N
   70   G(I) = I*I + 2*I
      DO 11 I = 1,N
   11   H(I) = I
      DO 21 I = 1,N
   21   J(I) = 3*I
      DO 31 I = 1,N
   31   K(I) = 2*I - 1
      DO 41 I = 1,N
   41   L(I) = I*I
      DO 51 I = 1,N
   51   M(I) = I*I - I
      DO 61 I = 1,N
   61   O(I) = I*I + I
      DO 71 I = 1,N
   71   P(I) = I*I + 2*I
      CALL ROTATE(N,W,A,B,C,D,E,F,G,H,J,K,L,M,O,P)
      PRINT*,A,B,C,D,E,F,G,H,I,J,K,L,M,O,P,W,N
      STOP
      END
      SUBROUTINE ROTATE(N,W,A,B,C,D,E,F,G,H,J,K,L,M,O,P)
      INTEGER W(N)
      INTEGER A(N),B(N),C(N),D(N),E(N),F(N),G(N)
      INTEGER H(N),J(N),K(N),L(N),M(N),O(N),P(N)
      DO 10 I = 1,N
   10   W(I) = A(I)
      DO 20 I = 1,N
   20   A(I) = B(I)
      DO 30 I = 1,N
   30   B(I) = C(I)
      DO 40 I = 1,N
   40   C(I) = D(I)
      DO 50 I = 1,N
   50   D(I) = E(I)
      DO 60 I = 1,N
   60   E(I) = F(I)
      DO 70 I = 1,N
   70   F(I) = G(I)
      DO 80 I = 1,N
   80   G(I) = H(I)
      DO 90 I = 1,N
   90   H(I) = J(I)
      DO 100 I = 1,N
  100   J(I) = K(I)
      DO 110 I = 1,N
  110   K(I) = L(I)
      DO 120 I = 1,N
  120   L(I) = M(I)
      DO 130 I = 1,N
  130   M(I) = O(I)
      DO 140 I = 1,N
  140   O(I) = P(I)
      DO 150 I = 1,N
  150   P(I) = W(I)
      RETURN
      END
