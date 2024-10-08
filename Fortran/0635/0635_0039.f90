SUBROUTINE TEST_1(D1,D2,N,M,L)
  COMPLEX(KIND=16),DIMENSION(1:N+2) :: D1,D2
  INTEGER(KIND=4) :: I
  INTEGER(KIND=4),INTENT(IN) :: N,M,L
  DO I=1,N
    D1(I)=D1(I)+D1(M)
  END DO
  DO I=1,N-1
    D2(I)=D2(I)+D2(L)
  END DO
END SUBROUTINE TEST_1

SUBROUTINE TEST_2(D1,D2,N)
  COMPLEX(KIND=16),DIMENSION(1:N+2) :: D1,D2
  INTEGER(KIND=4) :: I
  INTEGER(KIND=4),INTENT(IN) :: N
  DO I=1,N
    D1(I)=D1(I)+D1(N+1)
  END DO
  DO I=1,N-1
    D2(I)=D2(I)+D2(N+2)
  END DO
END SUBROUTINE TEST_2

PROGRAM MAIN
  COMPLEX(KIND=16),DIMENSION(66) :: D1,D2/66*(1.0_8,1.0_8)/,T1,T2
  D1=RESHAPE((/(I*(1.0_8,1.0_8),I=1,66)/),(/66/))
  T1=RESHAPE((/(I*(1.0_8,1.0_8),I=66,131)/),(/66/))
  T2=(2.0_8,2.0_8)
  CALL TEST_1(D1,D2,64_4,65_4,65_4)
  IF (ANSWER_CHECK(D1,T1,64_4).NE.0 .OR. &
      ANSWER_CHECK(D2,T2,63_4).NE.0) THEN
     PRINT *, "NG"
  ELSE
     PRINT *, "OK"
  END IF  
  T1=RESHAPE((/(I*(1.0_8,1.0_8),I=131,196)/),(/66/))
  T2=(3.0_8,3.0_8)
  CALL TEST_2(D1,D2,64_4)
  IF (ANSWER_CHECK(D1,T1,64_4).NE.0 .OR. &
      ANSWER_CHECK(D2,T2,63_4).NE.0) THEN
     PRINT *, "NG"
  ELSE
     PRINT *, "OK"
  END IF  
END PROGRAM MAIN

FUNCTION ANSWER_CHECK(RES,MASTER,N)
  COMPLEX(KIND=16),DIMENSION(66) :: RES,MASTER
  INTEGER(KIND=4) :: N
  ANSWER_CHECK = 0
  DO I=1,N
     IF (RES(I).NE.MASTER(I)) THEN
        ANSWER_CHECK = 1
        PRINT *, RES(I),MASTER(I),I
        RETURN
     END IF
  END DO
END FUNCTION ANSWER_CHECK
