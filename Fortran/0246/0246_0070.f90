PROGRAM p1
IMPLICIT NONE
INTEGER :: i,sum=0
DO 10 CONCURRENT(i=1:10)
   10 sum = sum + i
IF(sum==55) THEN
  Print *,"PASS"
ELSE
  Print *,"FAIL",sum
END IF
  
END PROGRAM p1
