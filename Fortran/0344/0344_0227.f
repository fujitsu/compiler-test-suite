      INTEGER A(10)/10*0/,B(10,10,10,10)
      INTEGER G(10,10),M(10,10)
      INTEGER C(10)/10*0/,D(10,10,10,10)
      INTEGER H(10,10,10)
      INTEGER E(10)/10*0/,F(10,10,10,10)
C
      DO 10 I=1,10
        DO 10 J=1,10
          G(I,J) = I+J
          M(I,J) = I-J
          DO 10 K=1,10
            H(I,J,K) = I+J-K
            DO 10 L=1,10
              B(I,J,K,L) = I+J
              D(I,J,K,L) = K+L
   10         F(I,J,K,L) = I+K
C
      DO 20 I=1,10
        A(I) = A(I) + I
        DO 20 J=1,10
          G(I,J) = G(I,J) + 3
          DO 20 K=1,10
            DO 20 L=1,10
              B(I,J,K,L) = B(I,J,K,L) + 2
   20 CONTINUE
C
      WRITE(6,1) A
      WRITE(6,1) ((G(I,J),I=1,10,2),J=1,10,2)
      WRITE(6,1) ((((B(I,J,K,L),I=1,10,2),J=1,10,3),
     +               K=1,10,2),L=1,10,3)
      WRITE(6,*)
C
      DO 30 I=1,10
        DO 30 J=1,10
          C(J) = J
          DO 30 K=1,10
            H(K,J,I) = H(K,J,I) * 2
            DO 30 L=1,10
              D(L,K,J,I) = D(L,K,J,I) + 2
   30 CONTINUE
C
      WRITE(6,1) C
      WRITE(6,1) (((H(I,J,K),I=1,10,3),J=1,10,3),K=1,10,3)
      WRITE(6,1) ((((D(I,J,K,L),I=1,10,2),J=1,10,3),
     +               K=1,10,2),L=1,10,3)
      WRITE(6,*)
C
      DO 40 I=1,10
        DO 40 J=1,10
          M(I,J) = M(I,J) * (-1)
          DO 40 K=1,10
            E(K) = K
            DO 40 L=1,10
              F(J,K,L,I) = F(J,K,L,I) + 2
   40 CONTINUE
C
      WRITE(6,1) C
      WRITE(6,1) ((M(I,J),I=1,10,2),J=1,10,2)
      WRITE(6,1) ((((F(I,J,K,L),I=1,10,2),J=1,10,3),
     +               K=1,10,2),L=1,10,3)
      WRITE(6,*)
    1 FORMAT(15I5)
      STOP
      END
