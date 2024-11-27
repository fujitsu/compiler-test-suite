module m1

type drv1
integer ::  ii = 0
integer :: jj = 1
end type

type,extends(drv1) :: drv2
integer :: mm = 2
integer :: nn = 3
end type

end module 

program test
use m1
implicit none 
integer :: int1

CLASS(drv2), POINTER :: ptr
TYPE(drv2), TARGET  :: tgt
TYPE(drv2)  :: objt

tgt%ii = 10
tgt%jj = 20
tgt%mm = 60
ptr =>tgt
int1    = 50
objt= tgt 

print*, tgt%ii

call sub(ptr, int1, objt)

contains
subroutine sub(dum,int2, tt) 
use m1
class(*):: dum
integer    :: int2
class(drv1):: tt
select type(dum)
class default
print *, int2
endselect

print *, tt%ii     

call ext_sub(tt)
end subroutine sub
end

subroutine ext_sub(dum1)
use m1
TYPE(drv1):: dum1
print *, "EXT SUBROUTINE"
print *, dum1
end subroutine
