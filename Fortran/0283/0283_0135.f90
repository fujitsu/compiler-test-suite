MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL,DIMENSION(5) :: tt
END TYPE

END MODULE

PROGRAM main
USE mod1

IMPLICIT NONE

INTEGER,DIMENSION(5) :: arr = (/-1,2,-3,4,-1/)
INTEGER :: i = 0 , j = 0 
TYPE(t1) :: obj
obj%tt = (/2.0,1.0,3.0,0.5,2.5/)

ASSOCIATE(bb => i)
  FORALL(bb = 1:5,obj%tt(bb) > 1.0)
    obj%tt(bb) = 1.1
    FORALL(j = 1:5,arr(j) > 1)
      arr(j) = 1
    END FORALL
  END FORALL
END ASSOCIATE

IF(ALL(obj%tt(1:5:2) .EQ. 1.1) .AND. ALL(arr(2:4:2) .EQ. 1)) THEN
  obj%tt = 0.0
  arr = 0
ELSE
  obj%tt = 1.0
  arr = 1
END IF

IF(ALL(obj%tt(1:5) .EQ. 0.0) .AND. ALL(arr(1:5) .EQ. 0)) THEN
  PRINT*,'pass'
ELSE
  PRINT*,101
END IF

END PROGRAM
