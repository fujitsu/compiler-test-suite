PROGRAM main
IMPLICIT NONE

INTEGER :: num = 0,n = 4

ASSOCIATE(bb => num)
ASSIGN 20 TO bb
  n = n + 2
  GOTO bb
  20  IF(n .EQ. 6) PRINT*,'pass'
END ASSOCIATE

END PROGRAM
