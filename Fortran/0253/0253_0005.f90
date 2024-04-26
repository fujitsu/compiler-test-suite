module m1
type ty
integer::arr(2)
end type
contains
subroutine sub(dmy)
type(ty)::dmy
integer::res(2)
open(unit=10,file='fort.08')
write(10,'(2(G0,:," "))')dmy%arr
close(10)
open(unit=20,file='fort.08',action='read')
read(20,'(2I3)')res
if (res(1)/=10)print*,"101"
if (res(2)/=20)print*,"102"
end subroutine
end module

program main
use m1
type(ty)::obj
obj = ty((/10,20/))
call sub(obj)
print*,"pass"
end
