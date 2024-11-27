PROGRAM main
IMPLICIT NONE

class(*),pointer :: ptr(:) 
INTEGER,target :: num(5) = 0,n = 4
 
ptr=>num

select type(bb => ptr(2))
type is(integer)
ASSIGN 20 TO bb
  n = n + 2
  GOTO bb
  20  IF(n .EQ. 6) PRINT*,'pass'
END select
 
END PROGRAM
