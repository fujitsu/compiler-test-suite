module m
integer,target,save  :: tar1=2
type ty
   integer,pointer :: ptr1
end type
type ty1
  type(ty) :: obj = ty(tar1)
end type
end module

use m
type(ty1)::obj1

if(associated(obj1%obj%ptr1) .eqv. .false.)print*,"101"
if(obj1%obj%ptr1 .ne. 2) print*,"100"
print*,"pass"
end
