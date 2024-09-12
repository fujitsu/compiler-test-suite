SUBROUTINE TEST(DATA1,DATA2,DATA3,B,N)
   REAL(KIND=8),DIMENSION(1:N,1:N,1:N) :: DATA1,DATA2,DATA3,B
   INTEGER(KIND=4) :: I,J,K,N
   I=1
11 CONTINUE
     J=1
21   CONTINUE
       DO K=1,N
         DATA1(K,J,I) = DATA1(K,J,I) + B(K,J,I)
       END DO
       J=J+1
     IF (J.LE.N) GOTO 21
     I=I+1
   IF (I.LE.N) GOTO 11
   I=1
12 CONTINUE
     J=1
22   CONTINUE
       DO K=1,N
         DATA2(K,J,I) = DATA2(K,J,I) + B(K,J,I)
       END DO
       J=J+1
     IF (J.LE.N) GOTO 22
     I=I+1
   IF (I.LE.N) GOTO 12
   I=1
13 CONTINUE
     J=1
23   CONTINUE
       DO K=1,N
         DATA3(K,J,I) = DATA3(K,J,I) + B(K,J,I)
       END DO
       J=J+1
     IF (J.LE.N) GOTO 23
     I=I+1
   IF (I.LE.N) GOTO 13
END SUBROUTINE TEST

PROGRAM MAIN
  REAL(KIND=8),DIMENSION(64,64,64) :: DATA1,DATA2,DATA3,TEMP1,TEMP2,TEMP3,B
  B=1.0_8
  DATA1=RESHAPE((/(I,I=1,262144)/),(/64,64,64/))
  DATA2=DATA1+1.0_8
  DATA3=DATA2+1.0_8
  TEMP1=DATA2
  TEMP2=DATA3
  TEMP3=DATA3+1.0_8
  CALL TEST(DATA1,DATA2,DATA3,B,64)
  IF (ANSWER_CHECK(DATA1,TEMP1,0).NE.0 .OR. &
      ANSWER_CHECK(DATA2,TEMP2,0).NE.0 .OR. &
      ANSWER_CHECK(DATA3,TEMP3,0).NE.0) THEN
     PRINT *, "NG"
  ELSE
     PRINT *, "OK"
  END IF  
END PROGRAM MAIN

FUNCTION ANSWER_CHECK(RES,MASTER,N)
  REAL(KIND=8),DIMENSION(64,64,64) :: RES,MASTER
  INTEGER,INTENT(IN) :: N
  ANSWER_CHECK = 0
  DO I=1,64-N
     DO J=1,64-N
        DO K=1,64-N
           IF (RES(K,J,I).NE.MASTER(K,J,I)) THEN
              ANSWER_CHECK = 1
              PRINT *, RES(K,J,I),MASTER(K,J,I),K,J,I
              RETURN
           END IF
        END DO
     END DO
  END DO
END FUNCTION ANSWER_CHECK