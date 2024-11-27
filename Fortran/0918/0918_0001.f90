module mod
type ty
integer ,pointer :: p
integer :: tar(5)
end type
type(ty),target,PROTECTED::obj
end

use mod
 integer ,pointer :: pp(:)
data pp /obj%tar(1:3:2)/ 
pp=>obj%tar(1:3:2)
if(associated(pp).neqv..true.)print*,"101"
end
