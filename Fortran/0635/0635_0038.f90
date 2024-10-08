SUBROUTINE TEST(D1,D2,N,M)
  REAL(KIND=8),DIMENSION(1:N+1) :: D1,D2
  INTEGER(KIND=4) :: I
  INTEGER(KIND=4),INTENT(IN) :: N,M
  DO I=1,N
    D1(I)=D1(I)+D1(M)
  END DO
  DO I=1,N
    D2(I)=D2(I)+D2(N+1)
  END DO
END SUBROUTINE TEST

PROGRAM MAIN
  REAL(KIND=8),DIMENSION(65) :: D1,D2,T1,T2
  D1=RESHAPE((/(I,I=1,65)/),(/65/))
  D2=1.0_8
  T1=RESHAPE((/(I,I=66,130)/),(/65/))
  T2=2.0_8
  CALL TEST(D1,D2,64_4,65_4)
  IF (ANSWER_CHECK(D1,T1).NE.0 .OR. &
      ANSWER_CHECK(D2,T2).NE.0) THEN
     PRINT *, "NG"
  ELSE
     PRINT *, "OK"
  END IF  
END PROGRAM MAIN

FUNCTION ANSWER_CHECK(RES,MASTER)
  REAL(KIND=8),DIMENSION(65) :: RES,MASTER
  ANSWER_CHECK = 0
  DO I=1,64
     IF (RES(I).NE.MASTER(I)) THEN
        ANSWER_CHECK = 1
        PRINT *, RES(I),MASTER(I),I
        RETURN
     END IF
  END DO
END FUNCTION ANSWER_CHECK
