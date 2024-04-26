      INTEGER A(10)/10*0/,B(10,10,10,10)
      INTEGER C(10)/10*0/,D(10,10,10,10)
      INTEGER E(10)/10*0/,F(10,10,10,10)
C
      DO 10 I=1,10
        DO 10 J=1,10
          DO 10 K=1,10
            DO 10 L=1,10
              B(I,J,K,L) = I+J
              D(I,J,K,L) = K+L
   10         F(I,J,K,L) = I+K
C
      DO 23 I=1,10
        DO 22 J=1,10
          DO 21 K=1,10
            DO 20 L=1,10
              B(I,J,K,L) = B(I,J,K,L) + 2
   20       CONTINUE
   21     CONTINUE
   22   CONTINUE
        A(I) = A(I) + I
   23 CONTINUE
C
      WRITE(6,1) A
      WRITE(6,1) ((((B(I,J,K,L),I=1,10,2),J=1,10,3),
     +               K=1,10,2),L=1,10,3)
      WRITE(6,*)
C
      DO 33 I=1,10
        DO 32 J=1,10
          DO 31 K=1,10
            DO 30 L=1,10
              D(L,K,J,I) = D(L,K,J,I) + 2
   30       CONTINUE
   31     CONTINUE
          C(J) = J
   32   CONTINUE
   33 CONTINUE
C
      WRITE(6,1) C
      WRITE(6,1) ((((D(I,J,K,L),I=1,10,2),J=1,10,3),
     +               K=1,10,2),L=1,10,3)
      WRITE(6,*)
C
      DO 43 I=1,10
        DO 42 J=1,10
          DO 41 K=1,10
            DO 40 L=1,10
              F(J,K,L,I) = F(J,K,L,I) + 2
   40       CONTINUE
            E(K) = K
   41     CONTINUE
   42   CONTINUE
   43 CONTINUE
C
      WRITE(6,1) C
      WRITE(6,1) ((((F(I,J,K,L),I=1,10,2),J=1,10,3),
     +               K=1,10,2),L=1,10,3)
      WRITE(6,*)
    1 FORMAT(15I5)
      STOP
      END
