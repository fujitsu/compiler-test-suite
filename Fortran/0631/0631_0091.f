      PROGRAM MAIN
      INTEGER A(100,100)
      DATA A/10000*1/

      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,*)

      DO 10 I=1,100
        DO 10 J=1,100
          A(I,J) = I
          IF (A(I,J).NE.I) THEN
            WRITE(6,1) A(I,J)
          ENDIF
   10 CONTINUE

      WRITE(6,1) ((A(I,J),I=1,100,20),J=1,100,20)
      WRITE(6,*)

      DO 20 I=1,100
        DO 20 J=1,100
          A(I,J) = A(I,J) + J
          CALL SUB1(A(I,J))
          A(I,J) = A(I,J) + I
   20 CONTINUE

      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,100,10),J=1,100,10)
      WRITE(6,*)

      DO 30 I=1,10
        DO 30 J=1,10
          A(I,J) = FUNC(A(I,J)) + I - J
   30 CONTINUE

      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,100,10),J=1,100,10)
      WRITE(6,*)

      DO 40 I=1,10
        DO 40 J=1,10
          A(I,J) = FUNC2(A(I,J)) + I - J
          CALL SUB1(A(I,J))
   40 CONTINUE

      WRITE(6,*) ' ## TEST 4 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) ((A(I,J),I=1,100,10),J=1,100,10)
      WRITE(6,*)
    1 FORMAT(10I8)
      STOP
      END

      SUBROUTINE SUB1(M)
      INTEGER M
      DO 40 I=1,300
        M = M + M/I
   40 CONTINUE
      RETURN
      END

      FUNCTION FUNC(L)
      INTEGER L
      DO 50 I=1,300
        L = L + 1
        L = I - L
   50 CONTINUE
      FUNC = L
      RETURN
      END

      FUNCTION FUNC2(L)
      INTEGER L
      DO 50 I=1,5000
        L = MOD(I,2)
   50 CONTINUE
      FUNC2 = L
      RETURN
      END
