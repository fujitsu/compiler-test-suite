SUBROUTINE TEST_1(P1,P2,N,M)
  REAL(KIND=8),POINTER,DIMENSION(:) :: P1,P2
  INTEGER(KIND=4) :: I
  INTEGER(KIND=4),INTENT(IN) :: N,M
  DO I=1,N
    P1(I)=P1(I)+P1(M)
  END DO
  DO I=1,N
    P2(I)=P2(I)+P2(N+1)
  END DO
END SUBROUTINE TEST_1

SUBROUTINE TEST_2(P1,P2,N,M)
  REAL(KIND=8),POINTER,DIMENSION(:) :: P1,P2
  INTEGER(KIND=4) :: I
  INTEGER(KIND=4),INTENT(IN) :: N,M
  DO I=1,N
    P1(I)=P1(I)+P1(N+1)
  END DO
  DO I=1,N
    P2(I)=P2(I)+P2(M)
  END DO
END SUBROUTINE TEST_2

PROGRAM MAIN
  REAL(KIND=8),DIMENSION(65),TARGET :: D1/65*1.0_8/,D2/65*1.0_8/
  REAL(KIND=8),POINTER,DIMENSION(:) :: P1,P2
  REAL(KIND=8),DIMENSION(64) :: T
  INTERFACE 
     SUBROUTINE TEST_1(P1,P2,N,M)
       REAL(KIND=8),POINTER,DIMENSION(:) :: P1,P2
       INTEGER(KIND=4),INTENT(IN) :: N,M
     END SUBROUTINE TEST_1
     SUBROUTINE TEST_2(P1,P2,N,M)
       REAL(KIND=8),POINTER,DIMENSION(:) :: P1,P2
       INTEGER(KIND=4),INTENT(IN) :: N,M
     END SUBROUTINE TEST_2
  END INTERFACE
  P1=>D1
  P2=>D2
  T=2.0_8
  CALL TEST_1(P1,P2,64_4,65_4)
  IF (ANSWER_CHECK(D1,T).NE.0 .OR. &
      ANSWER_CHECK(D2,T).NE.0) THEN
     PRINT *, "NG"
  ELSE
     PRINT *, "OK"
  END IF  
  T=3.0_8
  CALL TEST_2(P1,P2,64_4,65_4)
  IF (ANSWER_CHECK(D1,T).NE.0 .OR. &
      ANSWER_CHECK(D2,T).NE.0) THEN
     PRINT *, "NG"
  ELSE
     PRINT *, "OK"
  END IF  
END PROGRAM MAIN

FUNCTION ANSWER_CHECK(RES,MASTER)
  REAL(KIND=8),DIMENSION(65) :: RES
  REAL(KIND=8),DIMENSION(64) :: MASTER
  ANSWER_CHECK = 0
  DO I=1,64
     IF (RES(I).NE.MASTER(I)) THEN
        ANSWER_CHECK = 1
        PRINT *, RES(I),MASTER(I),I
        RETURN
     END IF
  END DO
END FUNCTION ANSWER_CHECK