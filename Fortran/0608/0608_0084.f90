MODULE mod1
TYPE ty
  INTEGER ::ii=2
  CONTAINS
  FINAL::ty1
END TYPE
CONTAINS
SUBROUTINE ty1(dmy)
  TYPE(ty)::dmy(:)
  PRINT*,'in destructor'
if (size(dmy)==2) then
  PRINT*,dmy(1)%ii,dmy(2)%ii
else
  PRINT*,dmy(1)%ii,dmy(2)%ii,dmy(3)%ii
endif
END SUBROUTINE

FUNCTION fun1()
  TYPE(ty)::fun1(3)
  fun1(1)%ii=0
  fun1(2)%ii=10
  fun1(3)%ii=10
END FUNCTION
END MODULE

PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty)::obj(2)
TYPE(ty)::obj1(3)
  obj1(1)%ii=0
  obj1(2)%ii=10
  obj1(3)%ii=10
obj=PACK(fun1(),obj1%ii/=0)
PRINT*,obj
END
