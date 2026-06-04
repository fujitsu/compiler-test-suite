SUBROUTINE TEST_1(DATA1,DATA2,DATA3,B,N)
  INTEGER(KIND=8) :: I,J,K,L,N
  REAL(KIND=8),DIMENSION(1:N,1:N,1:N,1:N) :: DATA1,DATA2,DATA3,B
  DO I=2,N
     DO J=2,N
        DO K=1,N-1
           L=K+1
           DATA1(L,K,J,I) = DATA1(L,K,J,I-1) - DATA1(L,K,J-1,I) + B(L,K,J,I)
        END DO
     END DO
  END DO
  DO I=2,N
     DO J=2,N
        DO K=1,N-1
           L=K+1
           DATA2(L,K,J,I) = DATA2(L,K,J,I-1) - DATA2(L,K,J-1,I) + B(L,K,J,I)
        END DO
     END DO
  END DO
  DO I=2,N
     DO J=2,N
        DO K=1,N-1
           L=K+1
           DATA3(L,K,J,I) = DATA3(L,K,J,I-1) - DATA3(L,K,J-1,I) + B(L,K,J,I)
        END DO
     END DO
  END DO
END SUBROUTINE TEST_1

SUBROUTINE TEST_2(DATA1,DATA2,DATA3,B,N,L,M,O)
  INTEGER(KIND=8) :: I,J,K,L,M,N,O
  REAL(KIND=8),DIMENSION(1:N,1:N,1:N,1:N) :: DATA1,DATA2,DATA3,B
  DO I=2,N
     DO J=2,N
        DO K=1,N-1
           L=K+1
           DATA1(L,K,J,I) = DATA1(L,K,J,I-1) - DATA1(L,K,J-1,I) + B(L,K,J,I)
        END DO
     END DO
  END DO
  DO I=2,N
     DO J=2,N
        DO K=1,N-1
           M=K+1
           DATA2(M,K,J,I) = DATA2(M,K,J,I-1) - DATA2(M,K,J-1,I) + B(M,K,J,I)
        END DO
     END DO
  END DO
  DO I=2,N
     DO J=2,N
        DO K=1,N-1
           O=K+1
           DATA3(O,K,J,I) = DATA3(O,K,J,I-1) - DATA3(O,K,J-1,I) + B(O,K,J,I)
        END DO
     END DO
  END DO
END SUBROUTINE TEST_2

PROGRAM MAIN
  REAL(KIND=8),DIMENSION(64,64,64,64) :: DATA1,DATA2,DATA3,B
  INTEGER(KIND=8) :: L,M,O
  B=1.0_8; DATA1=1.0_8; DATA2=1.0_8; DATA3=1.0_8
  CALL TEST_1(DATA1,DATA2,DATA3,B,64_8)
  CALL TEST_2(DATA1,DATA2,DATA3,B,64_8,L,M,O)
  IF (ANSWER_CHECK(DATA1).NE.0 .OR. &
      ANSWER_CHECK(DATA2).NE.0 .OR. &
      ANSWER_CHECK(DATA3).NE.0) THEN
     PRINT *, "NG"
  ELSE
     PRINT *, "OK"
  END IF
END PROGRAM MAIN

FUNCTION ANSWER_CHECK(RES)
  REAL(KIND=8),DIMENSION(64,64,64,64) :: RES
  INTEGER(KIND=8) :: I,J,K,L
  ANSWER_CHECK = 0
  DO I=2,64
     DO J=2,64
        DO K=1,63
           L=K+1
           IF (RES(L,K,J,I).NE.1.0_8) THEN
              ANSWER_CHECK = 1
              PRINT *, RES(L,K,J,I),K,J,I
              RETURN
           END IF
        END DO
     END DO
  END DO
END FUNCTION ANSWER_CHECK
