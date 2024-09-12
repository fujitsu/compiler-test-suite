      PROGRAM MAIN
      REAL A(3000),E(3000)/3000*0/
      EQUIVALENCE (B,A(1)),(C,D)

      B = 1
      DO 10 I=1,100
        DO 20 J=1,3000
          A(J) = J + I
   20   CONTINUE
        DO 10 J=1,3000
          B = B + A(J) - I
   10 CONTINUE

      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (A(I),I=1,3000,50)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,1) B
      WRITE(6,*)

      DO 30 I=1,3000
        A(I) = I
        C = A(I)
   30 CONTINUE

      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) ' # B C D # '
      WRITE(6,1) B,C,D
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (A(I),I=1,3000,50)
      WRITE(6,*)

      K = 1
      DO 40 I=1,100
        DO 50 J=1,3000
          A(J) = C
   50   CONTINUE
        DO 40 J=1,3000
          K = K + A(J) - C
   40 CONTINUE

      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (A(I),I=1,3000,50)
      WRITE(6,*)
      WRITE(6,*) ' # K # '
      WRITE(6,*) K
      WRITE(6,*)

      DO 60 I=1,3000
        D  = I
        A(1) = D + I
   60 CONTINUE

      WRITE(6,*) ' ## TEST 4 ## '
      WRITE(6,*)
      WRITE(6,*) ' # D # '
      WRITE(6,1) D
      WRITE(6,*)
      WRITE(6,*) ' # A(1) # '
      WRITE(6,1) A(1)
      WRITE(6,*)

      DO 70 I=1,3000
        E(I) = I
        A(1) = A(1) + E(I)
   70 CONTINUE

      WRITE(6,*) ' ## TEST 5 ## '
      WRITE(6,*)
      WRITE(6,*) ' # E # '
      WRITE(6,1) (E(I),I=1,3000,300)
      WRITE(6,*)
      WRITE(6,*) ' # A(1) # '
      WRITE(6,1) A(1)
      WRITE(6,*)
    1 FORMAT (5E15.6)
      STOP
      END
