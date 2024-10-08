SUBROUTINE TEST(DATA1,DATA2,DATA3,B,N)
  REAL(KIND=8),DIMENSION(1:N,1:N,1:N) :: DATA1,DATA2,DATA3,B
  INTEGER(KIND=4) :: I,J,K,N
  DO I=2,N
     DO J=2,N
        DO K=1,N
           DATA1(K,J,I) = DATA1(K,J,I-1) + DATA1(K,J-1,I) - B(K,J,I)
        END DO
     END DO
  END DO
  DO I=2,N
     DO J=2,N
        DO K=1,N
           DATA2(K,J,I) = DATA2(K,J,I-1) + DATA2(K,J-1,I) - B(K,J,I)
        END DO
     END DO
  END DO
  DO I=2,N
     DO J=2,N
        DO K=1,N
           DATA3(K,J,I) = DATA3(K,J,I-1) + DATA3(K,J-1,I) - B(K,J,I)
        END DO
     END DO
  END DO
END SUBROUTINE TEST

PROGRAM MAIN
  REAL(KIND=8),DIMENSION(8, 8, 8) :: DATA1, DATA2, DATA3, B
  REAL(KIND=8) :: ANS1, ANS2, ANS3
  ANS1=6945676.0_8
  ANS2=7048628.0_8
  ANS3=7151580.0_8
  B=1.0_8
  DATA1=RESHAPE((/(I,I=1,512)/),(/8,8,8/))
  DATA2=DATA1+1.0_8
  DATA3=DATA2+1.0_8
  CALL TEST(DATA1, DATA2, DATA3, B, 8)
  IF (SUM(DATA1).NE.ANS1 .OR. &
      SUM(DATA2).NE.ANS2 .OR. &
      SUM(DATA3).NE.ANS3) THEN
     PRINT *, "NG"
  ELSE
     PRINT *, "OK"
  END IF  
END PROGRAM MAIN
