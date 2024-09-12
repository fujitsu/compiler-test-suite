MODULE mod1
TYPE ty
  INTEGER ::ii=2
  CONTAINS
  FINAL::ty1,ty2
END TYPE
CONTAINS
SUBROUTINE ty1(dmy)
  TYPE(ty)::dmy(:)
  PRINT*,'start destructor'
  PRINT*,dmy(1)%ii,dmy(2)%ii,dmy(3)%ii,dmy(4)%ii
  PRINT*,'end destructor'
END SUBROUTINE
SUBROUTINE ty2(dmy)
  TYPE(ty)::dmy(:,:)
  PRINT*,'start destructor'
  PRINT*,dmy(1,1)%ii,dmy(2,1)%ii,dmy(1,2)%ii,dmy(2,2)%ii
  PRINT*,'end destructor'
END SUBROUTINE

FUNCTION fun1()
  TYPE(ty)::fun1(4)
  fun1(1)%ii=10
  fun1(2)%ii=20
  fun1(3)%ii=30
  fun1(4)%ii=40
END FUNCTION

FUNCTION fun2()
  TYPE(ty)::fun2(2,2)
  fun2(1,1)%ii=40
  fun2(1,2)%ii=50
  fun2(2,1)%ii=60
  fun2(2,2)%ii=70
END FUNCTION
END MODULE

PROGRAM MAIN
USE mod1
IMPLICIT NONE
TYPE(ty)::obj(2,2)
LOGICAL::xx(2,2)
obj%ii=99
xx(1,1)=.TRUE.
xx(1,2)=.FALSE.
xx(2,1)=.FALSE.
xx(2,2)=.TRUE.
obj=UNPACK(fun1(),MASK=xx,FIELD=fun2())
IF(obj(1,1)%ii.ne. 10)PRINT*,'fail'
END
