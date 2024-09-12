SUBROUTINE TEST_1(D1,N,M)
  COMPLEX(KIND=16),DIMENSION(1:N+1) :: D1
  INTEGER(KIND=4) :: I
  INTEGER(KIND=4),INTENT(IN) :: N,M
  DO I=1,N
    D1(I)=D1(I)+D1(M)
  END DO
END SUBROUTINE TEST_1

SUBROUTINE TEST_2(D1,N)
  COMPLEX(KIND=16),DIMENSION(1:N+1) :: D1
  INTEGER(KIND=4) :: I
  INTEGER(KIND=4),INTENT(IN) :: N
  DO I=1,N
    D1(I)=D1(I)+D1(N+1)
  END DO
END SUBROUTINE TEST_2

PROGRAM MAIN
  COMPLEX(KIND=16),DIMENSION(65) :: D1/65*(1.0_8,1.0_8)/
  COMPLEX(KIND=16),DIMENSION(65) :: TEMP1
  TEMP1=D1+(1.0_8,1.0_8)
  CALL TEST_1(D1,64_4,65_4)
  IF (ANSWER_CHECK(D1,TEMP1).NE.0) THEN
     PRINT *, "NG"
  ELSE
     PRINT *, "OK"
  END IF  
  TEMP1=D1+(1.0_8,1.0_8)
  CALL TEST_2(D1,64_4)
  IF (ANSWER_CHECK(D1,TEMP1).NE.0) THEN
     PRINT *, "NG"
  ELSE
     PRINT *, "OK"
  END IF  
END PROGRAM MAIN

FUNCTION ANSWER_CHECK(RES,MASTER)
  COMPLEX(KIND=16),DIMENSION(65) :: RES,MASTER
  ANSWER_CHECK = 0
  DO I=1,64
     IF (RES(I).NE.MASTER(I)) THEN
        ANSWER_CHECK = 1
        PRINT *, RES(I),MASTER(I),I
        RETURN
     END IF
  END DO
END FUNCTION ANSWER_CHECK