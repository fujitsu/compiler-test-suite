      PROGRAM MAIN
      INTEGER A(100,100)
      DATA A/10000*1/

      DO 10 I=1,100
        DO 10 J=1,100
          IF (A(I,J).EQ.0) GOTO 20
          IF (A(I,J).GT.A(I,J)) GOTO 20
          IF (.FALSE.) GOTO 20
            A(I,J) = A(I,J) * J
   10 CONTINUE

 20   WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,100,10),J=1,100,10)
      WRITE(6,*)

      DO 30 I=1,100
        DO 30 J=1,100
          IF (A(I,J)) 60,50,40
   40     IF (ABS(A(I,J))) 70,60,70
   60     A(I,J) = MOD(A(I,J),3)
   70     A(I,J) = A(I,J) * J
   30 CONTINUE

   50 WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,100,10),J=1,100,10)
      WRITE(6,*)

      DO 80 I=1,100
        DO 80 J=1,100
          A(I,J) = ABS(A(I,J))
          IF (A(I,J)) 90,100,100
  100     CONTINUE
          A(I,J) = MOD(A(I,J),1)
          IF (A(I,J)) 90,110,90
  110     CONTINUE
          A(I,J) = A(I,J) + 1
   80 CONTINUE

   90 WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,100,10),J=1,100,10)
      WRITE(6,*)

      DO 120 I=1,100
        DO 120 J=1,100
          IF (A(I,J).EQ.0) GOTO 120
          IF (A(I,J).GT.A(I,J)) GOTO 120
          IF (.FALSE.) GOTO 120
            A(I,J) = A(I,J) * J
  120 CONTINUE

      WRITE(6,*) ' ## TEST 4 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,100,10),J=1,100,10)
      WRITE(6,*)

      DO 140 I=1,100
        DO 130 J=1,100
          IF (A(I,J).EQ.0) GOTO 130
          IF (A(I,J).GT.A(I,J)) GOTO 130
          IF (.FALSE.) GOTO 140
            A(I,J) = A(I,J) * J
  130 CONTINUE
  140 CONTINUE

      WRITE(6,*) ' ## TEST 5 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,100,10),J=1,100,10)
      WRITE(6,*)
    1 FORMAT(15I5)
      STOP
      END
