SUBROUTINE TEST(DATA1,DATA2,DATA3,B,N)
    REAL(KIND=8),DIMENSION(1:N,1:N,1:N) :: DATA1,DATA2,DATA3,B
    INTEGER(KIND=4) :: I,J,K,N
    I=2
11  CONTINUE
       J=2
21     CONTINUE
       K=1
31        DATA1(K,J,I) = DATA1(K,J,I-1) - DATA1(K,J-1,I) + B(K,J,I)
          IF (K.LT.N) THEN
             K=K+1
             GOTO 31
          END IF
       IF (J.LT.N) THEN
          J=J+1
          GOTO 21
       END IF
    IF (I.LT.N) THEN
       I=I+1
       GOTO 11
    END IF
    I=2
12  CONTINUE
       J=2
22     CONTINUE
       K=1
32        DATA2(K,J,I) = DATA2(K,J,I-1) - DATA2(K,J-1,I) + B(K,J,I)
          IF (K.LT.N) THEN
             K=K+1
             GOTO 32
          END IF
       IF (J.LT.N) THEN
          J=J+1
          GOTO 22
       END IF
    IF (I.LT.N) THEN
       I=I+1
       GOTO 12
    END IF
    I=2
13  CONTINUE
       J=2
23     CONTINUE
       K=1
33        DATA3(K,J,I) = DATA3(K,J,I-1) - DATA3(K,J-1,I) + B(K,J,I)
          IF (K.LT.N) THEN
             K=K+1
             GOTO 33
          END IF
       IF (J.LT.N) THEN
          J=J+1
          GOTO 23
       END IF
    IF (I.LT.N) THEN
       I=I+1
       GOTO 13
    END IF
END SUBROUTINE TEST

PROGRAM MAIN
  REAL(KIND=8),DIMENSION(64,64,64) :: DATA1,DATA2,DATA3,B
  B=1.0_8; DATA1=1.0_8; DATA2=1.0_8; DATA3=1.0_8
  CALL TEST(DATA1,DATA2,DATA3,B,64_4)
  IF (ANSWER_CHECK(DATA1).NE.0 .OR. &
      ANSWER_CHECK(DATA2).NE.0 .OR. &
      ANSWER_CHECK(DATA3).NE.0) THEN
     PRINT *, "NG"
  ELSE
     PRINT *, "OK"
  END IF  
END PROGRAM MAIN

FUNCTION ANSWER_CHECK(RES)
  REAL(KIND=8),DIMENSION(64,64,64) :: RES
  ANSWER_CHECK = 0
  DO I=2,64
     DO J=2,64
        DO K=1,64
           IF (RES(K,J,I).NE.1.0_8) THEN
              ANSWER_CHECK = 1
              PRINT *, RES(K,J,I),K,J,I
              RETURN
           END IF
        END DO
     END DO
  END DO
END FUNCTION ANSWER_CHECK
