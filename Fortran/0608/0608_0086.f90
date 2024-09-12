MODULE mod1
TYPE ty
  INTEGER ::ii=2
  CONTAINS
  FINAL::ty_array
END TYPE

TYPE ty1
  INTEGER::jj=3
  CONTAINS
  FINAL::ty1_scalar
END TYPE
  
CONTAINS

SUBROUTINE ty_array(dmy)
  TYPE(ty)::dmy(2)
  PRINT*,'destructor for fun1 starts'
  PRINT*,dmy%ii
  PRINT*,'end destructor'
END SUBROUTINE
SUBROUTINE ty1_scalar(dmy)
  TYPE(ty1)::dmy
  PRINT*,'destructor for fun2 starts'
  PRINT*,dmy%jj
  PRINT*,'end destructor'
END SUBROUTINE

FUNCTION fun1()
  TYPE(ty),POINTER::fun1(:)
  ALLOCATE(fun1(2))
  fun1%ii=60
  PRINT*,'m in fun1'
END FUNCTION
FUNCTION fun2()
  TYPE(ty1),ALLOCATABLE::fun2
  ALLOCATE(fun2)
  fun2%jj=70
  PRINT*,'m in fun2'
END FUNCTION
END MODULE

PROGRAM MAIN
USE mod1
IMPLICIT NONE
LOGICAL::xx
xx=SAME_TYPE_AS(fun1(),fun2())
IF(xx .neqv. .false.) PRINT*,'fail'
END
