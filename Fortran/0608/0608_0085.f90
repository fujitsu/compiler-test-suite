MODULE mod1
TYPE ty
  INTEGER ::ii=2
  CONTAINS
  FINAL::ty_array2d,ty_array1d
END TYPE
CONTAINS
SUBROUTINE ty_array1d(dmy)
  TYPE(ty)::dmy(6)
  PRINT*,'start array1d destructor'
  PRINT*,dmy%ii
  PRINT*,'end destructor'
END SUBROUTINE

SUBROUTINE ty_array2d(dmy)
  TYPE(ty)::dmy(2,3)
  PRINT*,'start array2d destructor'
  PRINT*,dmy%ii
  PRINT*,'end destructor'
END SUBROUTINE

FUNCTION fun1()
  TYPE(ty),ALLOCATABLE::fun1(:,:)
  ALLOCATE(fun1(2,3))
  fun1(1,1)%ii=1
  fun1(1,2)%ii=2
  fun1(1,3)%ii=3
  fun1(2,1)%ii=4
  fun1(2,2)%ii=5
  fun1(2,3)%ii=6
END FUNCTION
END MODULE

PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty)::obj(6)
obj%ii=99
obj=RESHAPE(fun1(),(/6/))
IF(obj(1)%ii.ne.1)PRINT*,'fail'
END
