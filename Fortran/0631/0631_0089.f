      PROGRAM MAIN
      REAL A(5,5,2000)
      REAL B(5,5,5,2000)
      REAL C(5,2000)

      DO 100 I=1,5
        DO 20 J=1,5
          DO 30 K=1,2000
            A(I,J,K) = (I + J) / K
   30     CONTINUE
          DO 40 K=1,2000
            A(I,J,K) = A(I,J,K) + (I + K) / J
   40     CONTINUE
   20   CONTINUE
        DO 50 J=1,2000
          C(I,J) = A(I,1,J)
   50   CONTINUE
        DO 60 J=1,5
          DO 70 K=1,5
            DO 80 L=1,2000
              B(I,J,K,L) = C(I,J) + A(I,J,K) + L
   80       CONTINUE
            DO 90 L=1,2000
              B(I,J,K,L) = B(I,J,K,L) + 1
   90       CONTINUE
   70     CONTINUE
          DO 1000 K=1,5
            DO 1000 L=1,2000
              B(I,J,K,L) = B(I,J,K,L) * 2
 1000     CONTINUE
          DO 1100 K=1,2000
            A(I,J,K) = A(I,J,K) / K
 1100     CONTINUE
   60   CONTINUE
  100 CONTINUE

      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (((A(I,J,K),I=1,5,5),J=1,5,5),K=1,2000,500)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,1) ((((B(I,J,K,L),I=1,5,5),J=1,5,5),K=1,5,5)
     +                         ,L=1,2000,500)
      WRITE(6,*)
      WRITE(6,*) ' # C # '
      WRITE(6,1) ((C(I,J),I=1,5,5),J=1,2000,500)

      DO 110 I=1,5
        DO 120 J=1,5
          DO 120 K=1,2000
            A(I,J,K) = (I + J) / K
  120   CONTINUE
        DO 130 J=1,2000
          C(I,J) = A(I,1,J)
  130   CONTINUE
        DO 140 J=1,5
          DO 140 K=1,5
            DO 140 L=1,2000
              B(I,J,K,L) = C(I,J) + A(I,J,K) + L
  140   CONTINUE
        DO 150 K=1,5
          DO 150 L=1,2000
            B(I,1,K,L) = B(I,1,K,L) * 2
  150   CONTINUE
        DO 160 K=1,2000
          A(I,2,K) = A(I,2,K) / K
  160   CONTINUE
  110 CONTINUE

      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (((A(I,J,K),I=1,5,5),J=1,5,5),K=1,2000,500)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,1) ((((B(I,J,K,L),I=1,5,5),J=1,5,5),K=1,5,5)
     +                         ,L=1,2000,500)
      WRITE(6,*)
      WRITE(6,*) ' # C # '
      WRITE(6,1) ((C(I,J),I=1,5,5),J=1,2000,500)
      WRITE(6,*)
    1 FORMAT (5E15.6)
      STOP
      END
