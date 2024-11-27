PROGRAM main
IMPLICIT NONE
 
INTEGER :: num = 0,n = 4,num2 = 2
 
ASSOCIATE(bb => num+num2)
ASSIGN 20 TO bb
  n = n + 2
  GOTO bb
  n = n - 2
  20  IF(n .EQ. 6) PRINT*,'pass'
END ASSOCIATE
 
END PROGRAM
