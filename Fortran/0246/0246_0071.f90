PROGRAM p1
IMPLICIT NONE
INTEGER :: i,sum=0
INTEGER :: temp=0
DO 10 CONCURRENT(i=1:10,sum<45)
   temp = temp + i
   10 sum = sum + i

IF(sum==55 .AND. temp==55) THEN
  Print *,"PASS"
ELSE
  Print *,"FAIL",sum,temp
END IF
  
END PROGRAM p1
