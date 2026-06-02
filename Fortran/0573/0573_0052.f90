module m11
type ty
   integer,allocatable:: aa
end type ty
end module m11
use m11
INTERFACE GEN
 SUBROUTINE S1 (J, alty)
use m11
 INTEGER::J
 integer,allocatable:: alty
 END SUBROUTINE S1
 END INTERFACE

type(ty),pointer::obj1
allocate(obj1)
CALL GEN(7, NULL(obj1%aa))
CALL S1(7,NULL(obj1%aa))
print*,"pass"
end

SUBROUTINE S1 (J, alty)
 use m11
 INTEGER::J
 integer,allocatable:: alty
 allocate(alty)
 if(J.ne.7)print*,"101"
END SUBROUTINE S1

