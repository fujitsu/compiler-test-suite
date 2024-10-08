SUBROUTINE TEST_1(P1,N,M)
  REAL(KIND=8),POINTER,DIMENSION(:) :: P1
  INTEGER(KIND=4) :: I
  INTEGER(KIND=4),INTENT(IN) :: N,M
  DO I=1,N
    P1(I)=P1(I)+P1(M)
  END DO
END SUBROUTINE TEST_1

SUBROUTINE TEST_2(P1,N)
  REAL(KIND=8),POINTER,DIMENSION(:) :: P1
  INTEGER(KIND=4) :: I
  INTEGER(KIND=4),INTENT(IN) :: N
  DO I=1,N
    P1(I)=P1(I)+P1(N+1)
  END DO
END SUBROUTINE TEST_2

PROGRAM MAIN
  REAL(KIND=8),DIMENSION(65),TARGET :: D1/65*1.0_8/
  REAL(KIND=8),POINTER,DIMENSION(:) :: P1
  INTERFACE 
     SUBROUTINE TEST_1(P1,N,M)
       REAL(KIND=8),POINTER,DIMENSION(:) :: P1
       INTEGER(KIND=4),INTENT(IN) :: N,M
     END SUBROUTINE TEST_1
     SUBROUTINE TEST_2(P1,N)
       REAL(KIND=8),POINTER,DIMENSION(:) :: P1
       INTEGER(KIND=4),INTENT(IN) :: N
     END SUBROUTINE TEST_2
  END INTERFACE
  P1=>D1
  CALL TEST_1(P1,64_4,65_4)
  IF (ANSWER_CHECK(D1,2.0_8).NE.0) THEN
     PRINT *, "NG"
  ELSE
     PRINT *, "OK"
  END IF  
  CALL TEST_2(P1,64_4)
  IF (ANSWER_CHECK(D1,3.0_8).NE.0) THEN
     PRINT *, "NG"
  ELSE
     PRINT *, "OK"
  END IF  
END PROGRAM MAIN

FUNCTION ANSWER_CHECK(RES,MASTER)
  REAL(KIND=8),DIMENSION(65) :: RES
  REAL(KIND=8) :: MASTER
  ANSWER_CHECK = 0
  DO I=1,64
     IF (RES(I).NE.MASTER) THEN
        ANSWER_CHECK = 1
        PRINT *, RES(I),MASTER,I
        RETURN
     END IF
  END DO
END FUNCTION ANSWER_CHECK
