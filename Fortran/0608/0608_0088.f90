MODULE mod1
TYPE ty
  INTEGER ::ii=2
  CONTAINS
  FINAL::ty_array2d,ty_array1d
END TYPE
CONTAINS
SUBROUTINE ty_array1d(dmy)
  TYPE(ty)::dmy(3)
  PRINT*,'start array1d destructor'
  PRINT*,dmy%ii
  PRINT*,'end destructor'
  PRINT*,''
END SUBROUTINE

SUBROUTINE ty_array2d(dmy)
  TYPE(ty)::dmy(2,3)
  PRINT*,'start array2d destructor'
  PRINT*,dmy%ii
  PRINT*,'end destructor'
END SUBROUTINE

FUNCTION fun1()
  TYPE(ty)::fun1(3)
  fun1(1)%ii=1
  fun1(2)%ii=2
  fun1(3)%ii=3
END FUNCTION
END MODULE

PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty),POINTER::obj(:,:)
ALLOCATE(obj,SOURCE=SPREAD(fun1(),DIM=1,NCOPIES=3))
PRINT*,obj(1,1)%ii,obj(1,2)%ii,obj(1,3)%ii
PRINT*,obj(2,1)%ii,obj(2,2)%ii,obj(2,3)%ii
END
