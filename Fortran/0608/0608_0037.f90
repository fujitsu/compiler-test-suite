MODULE mod1
IMPLICIT NONE
TYPE ty
  INTEGER :: ii=1
  CONTAINS
  FINAL::destructor,last
END TYPE

CONTAINS
SUBROUTINE destructor(bv)
  TYPE(ty)::bv
  PRINT*,'destructor called'
    print*,bv%ii
END SUBROUTINE

SUBROUTINE last(cv)
  TYPE(ty)::cv(:)
  PRINT*,'destructor called::last'
  PRINT*,cv%ii
END SUBROUTINE
END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty) :: ty_obj1(10)
TYPE(ty) :: ty_obj2(10)
ty_obj1%ii=222
ty_obj2%ii=444

ty_obj1(1)%ii=0
ty_obj1(3)%ii=0
ty_obj1(5)%ii=0
ty_obj1(7)%ii=0
ty_obj1(9)%ii=0

ty_obj2(2)%ii=2
ty_obj2(4)%ii=4
ty_obj2(6)%ii=6
ty_obj2(8)%ii=8
ty_obj2(10)%ii=10

ty_obj1(1:fun1():fun2())=ty_obj2(2:fun3(ty_obj1):fun4())
IF(ty_obj1(1)%ii .NE. 2) print*,201
CONTAINS
INTEGER FUNCTION fun1()
  fun1=10
END FUNCTION
INTEGER FUNCTION fun2()
  fun2=2
END FUNCTION
INTEGER FUNCTION fun3(dmy)
  TYPE(ty) :: dmy(10)
  dmy(1)%ii=1
  dmy(3)%ii=3
  dmy(5)%ii=5
  dmy(7)%ii=7
  dmy(9)%ii=9
  fun3=10
END FUNCTION
INTEGER FUNCTION fun4()
  fun4=2
END FUNCTION
END
