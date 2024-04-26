MODULE mod1
IMPLICIT NONE

TYPE t1
  REAL :: r
  TYPE(t1),POINTER :: ptr
END TYPE

END MODULE

PROGRAM main
USE mod1
IMPLICIT NONE

TYPE(t1) :: obj,obj2
ALLOCATE(obj%ptr)
obj%ptr%r = 2.0

ASSOCIATE(aa => obj%ptr%r , bb => fun_2(obj2) , cc => 2.0 * 4.0)
  aa = aa + 3.0
  CALL sub(aa + (bb%r * cc))
END ASSOCIATE

CONTAINS

SUBROUTINE sub(ddm)
IMPLICIT NONE
REAL :: ddm
IF(ddm .EQ. 37.0) then
 PRINT*,'pass'
else
  print*,101
end if
END SUBROUTINE

FUNCTION fun_2(ddo)
IMPLICIT NONE
TYPE(t1) :: ddo,fun_2
ddo%r = 4.0
fun_2 = ddo
END FUNCTION

END PROGRAM
