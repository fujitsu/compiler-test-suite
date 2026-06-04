module m11
type ty
   integer :: aa
end type ty
end module m11
use m11
INTERFACE GEN
 SUBROUTINE S1 (J, alty)
use m11
 INTEGER::J
 type(ty),allocatable:: alty
 END SUBROUTINE S1
 END INTERFACE

type(ty),allocatable::obj1
allocate(obj1)
obj1%aa =10
CALL GEN(7, NULL(obj1))
CALL S1(7,NULL(obj1))
print*,"pass"
end


SUBROUTINE S1 (J, alty)
 use m11
 INTEGER::J
 type(ty),allocatable:: alty
 allocate(alty)
 if(J.ne.7)print*,"101"
END SUBROUTINE S1

