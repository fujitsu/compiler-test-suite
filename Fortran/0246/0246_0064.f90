PROGRAM p1
INTEGER ::K
K=50
DO CONCURRENT(K=1:3,K>=2)
END DO
IF(K==50) THEN
  PRINT *,"PASS"
ELSE
  PRINT *,"FAIL"
END IF
END PROGRAM
