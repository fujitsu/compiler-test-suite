module m1
interface 
subroutine fun(dmy)
integer :: dmy
end subroutine
end interface

procedure(fun),pointer :: pptr

interface gnr
procedure pptr
end interface
end module

use m1
integer :: ii
pptr=>fun
do ii=1,10
call gnr(ii)
end do
if(ii .EQ. 11)then
print*,'PASS'
else
print*,'FAIL'
endif
end

subroutine fun(dmy)
integer :: dmy
print*,dmy
end subroutine

