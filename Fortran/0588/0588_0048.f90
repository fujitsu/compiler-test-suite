module m
integer,target,save  :: tar1=2
end module

module m2
use m,tar2=>tar1
type ty
   integer,pointer :: ptr1
end type
type ty1
  type(ty) :: obj = ty(tar2)
end type
end module

use m2
type(ty1)::obj1

if(associated(obj1%obj%ptr1) .eqv. .false.)print*,"101"
if(obj1%obj%ptr1 .ne. 2) print*,"100"
obj1%obj%ptr1 =12
if(tar2.ne.12)print*,"102"
print*,"pass"
end
