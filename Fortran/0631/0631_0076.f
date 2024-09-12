      PROGRAM MAIN
      INTEGER A(100,100)/10000*1/
      INTEGER B(100,100)/10000*2/
      INTEGER C(3000)/3000*3/

   99 CONTINUE
      DO 10 K=1,100
        IF (K.GT.100) GOTO 10
        C(K) = A(K,1) - B(1,K) + C(K)
        A(K,1) = A(K,1) + C(K)
   10 CONTINUE

      DO 20 I= 1,100
        C(I) = C(I) + I
        IF (C(I).GE.50) GOTO 25
        DO 30 J=1,100
          IF (A(I,J).EQ.10) GOTO 30
          A(I,J) = A(I,J) + B(I,J)
          B(I,J) = B(I,J) / I
   30   CONTINUE
   25   C(I) = C(I) - I / 2
        C(I) = MOD(C(I),I)
   20 CONTINUE

      IF (C(1).EQ.10) GOTO 99
 50   WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,100,10),J=1,100,10)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,1) ((B(I,J),I=1,100,10),J=1,100,10)
      WRITE(6,*)
      WRITE(6,*) ' # C # '
      WRITE(6,1) (C(I),I=1,3000,10)

      J = 1
   88 CONTINUE
      DO 40 K=1,100
        IF (K.GT.100) GOTO 40
        DO 60 I=1,100
          C(K) = A(K,I) - B(I,K) + C(K)
          A(K,I) = A(K,I) + C(K)
   60   CONTINUE
      B(K,1) = K
   40 CONTINUE

      J = J + 1
      IF (J.EQ.5) GOTO 88
      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,2) ((A(I,J),I=1,100,10),J=1,100,10)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,2) ((B(I,J),I=1,100,10),J=1,100,10)
      WRITE(6,*)
      WRITE(6,*) ' # C # '
      WRITE(6,2) (C(I),I=1,100)

      DO 70 K=1,100
        IF (K.GT.100) GOTO 70
        B(K,1) = K
        DO 80 I=1,100
          C(K) = A(K,I) - B(I,K) + C(K)
          A(K,I) = A(K,I) + C(K)
   80   CONTINUE
   70 CONTINUE

      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,3) ((A(I,J),I=1,100,20),J=1,100,10)
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,3) ((B(I,J),I=1,100,20),J=1,100,10)
      WRITE(6,*)
      WRITE(6,*) ' # C # '
      WRITE(6,3) (C(I),I=1,100,5)
      WRITE(6,*)

    1 FORMAT(25I3)
    2 FORMAT(15I5)
    3 FORMAT(10I7)
      STOP
      END
