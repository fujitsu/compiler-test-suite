MODULE mod1
TYPE ty
  INTEGER ::ii=99
  CONTAINS
  FINAL::ty1
END TYPE
CONTAINS
SUBROUTINE ty1(dmy)
  TYPE(ty)::dmy(3,2)
  PRINT*,'inside destructor'
  PRINT*,dmy
END SUBROUTINE

FUNCTION fun1(dmy)
  TYPE(ty)::fun1(3,2)
  TYPE(ty)::dmy(2,3)
  fun1=TRANSPOSE(dmy)
END FUNCTION
END MODULE

PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty)::arr(2,3)
TYPE(ty)::arr1(2,3)
arr(1,1)%ii=1
arr(1,2)%ii=2
arr(1,3)%ii=3
arr(2,1)%ii=4
arr(2,2)%ii=5
arr(2,3)%ii=6
PRINT*,'original matrix is:'
PRINT*,arr
arr1=TRANSPOSE(fun1(arr))
IF(arr1(1,1)%ii .ne. 1)PRINT*,'error'
END
