MODULE mod1
TYPE ty
  INTEGER ::ii=2
  CONTAINS
  FINAL::ty_array,ty_scalar,ty_array1
END TYPE
CONTAINS
SUBROUTINE ty_scalar(dmy)
  TYPE(ty)::dmy
  PRINT*,'start scalar destructor'
  PRINT*,dmy%ii
  PRINT*,'end destructor'
  PRINT*,''
END SUBROUTINE

SUBROUTINE ty_array(dmy)
  TYPE(ty)::dmy(:)
  PRINT*,'start array destructor'
  PRINT*,dmy(1)%ii,dmy(2)%ii
  PRINT*,'end destructor'
  PRINT*,''
END SUBROUTINE
SUBROUTINE ty_array1(dmy)
  TYPE(ty)::dmy(:,:)
  PRINT*,'start array destructor'
  PRINT*,dmy(1,1)%ii,dmy(2,1)%ii
  PRINT*,'end destructor'
  PRINT*,''
END SUBROUTINE

FUNCTION fun1(dmy1,dmy2)
  TYPE(ty)::fun1(dmy1,dmy2)
  INTEGER::dmy1,dmy2
  fun1(1,1)%ii=50
  fun1(2,1)%ii=100
END FUNCTION
FUNCTION fun2()
  TYPE(ty),ALLOCATABLE::fun2(:)
  ALLOCATE(fun2(2))
  fun2(1)%ii=200
  fun2(2)%ii=250
END FUNCTION
FUNCTION fun3()
  TYPE(ty)::fun3
  fun3%ii=300
END FUNCTION
INTEGER FUNCTION fun4()
  fun4=2
END FUNCTION
INTEGER FUNCTION fun5()
  fun5=1
END FUNCTION
END MODULE

PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty),POINTER::obj1(:,:)
TYPE(ty),ALLOCATABLE::obj2(:)
TYPE(ty),ALLOCATABLE::obj3
ALLOCATE(obj1,SOURCE=fun1(fun4(),fun5()))
ALLOCATE(obj2,SOURCE=fun2())
ALLOCATE(obj3,SOURCE=fun3())
END
