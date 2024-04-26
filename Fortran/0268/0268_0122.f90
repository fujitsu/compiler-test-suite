Module m
type ty1
  integer :: ii
end type

type ,extends(ty1) ::  ty2
 integer :: jj
end type

end module

use m
type(ty2),target,save :: tar(2)
type(ty2),pointer :: ptr(:)=>tar(1:2)
tar%jj=5
if(any(ptr%jj .ne. 5))print*,"101"
if(associated(ptr) .eqv. .false.)print*,"102"
print*,"PASS"
end
