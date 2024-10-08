MODULE FT
  TYPE FTYPE
     REAL(KIND=8) :: F,G
  END TYPE FTYPE
END MODULE FT

SUBROUTINE TEST_1(D1,N,M)
  USE FT
  TYPE(FTYPE),DIMENSION(1:N+1) :: D1
  INTEGER(KIND=4) :: I
  INTEGER(KIND=4),INTENT(IN) :: N,M
  DO I=1,N
    D1(I)%F=D1(I)%F+D1(M)%F
  END DO
END SUBROUTINE TEST_1

SUBROUTINE TEST_2(D1,N)
  USE FT
  TYPE(FTYPE),DIMENSION(1:N+1) :: D1
  INTEGER(KIND=4) :: I
  INTEGER(KIND=4),INTENT(IN) :: N
  DO I=1,N
    D1(I)%F=D1(I)%F+D1(N+1)%F
  END DO
END SUBROUTINE TEST_2

PROGRAM MAIN
  USE FT
  TYPE(FTYPE),DIMENSION(65) :: D1=FTYPE(1.0_8,0.0_8)
  CALL TEST_1(D1,64_4,65_4)
  IF (ANSWER_CHECK(D1,2.0_8).NE.0) THEN
     PRINT *, "NG"
  ELSE
     PRINT *, "OK"
  END IF  
  CALL TEST_2(D1,64_4)
  IF (ANSWER_CHECK(D1,3.0_8).NE.0) THEN
     PRINT *, "NG"
  ELSE
     PRINT *, "OK"
  END IF  
END PROGRAM MAIN

FUNCTION ANSWER_CHECK(RES,MASTER)
  USE FT
  TYPE(FTYPE),DIMENSION(65) :: RES
  REAL(KIND=8) :: MASTER
  ANSWER_CHECK = 0
  DO I=1,64
     IF (RES(I)%F.NE.MASTER) THEN
        ANSWER_CHECK = 1
        PRINT *, RES(I)%F,MASTER,I
        RETURN
     END IF
  END DO
END FUNCTION ANSWER_CHECK
