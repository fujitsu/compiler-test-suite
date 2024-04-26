module m1
type ty
sequence
integer :: ii
end type
end module 

interface 
subroutine s1( d1)
use m1 
type(ty) :: d1
end subroutine 
end interface

block
type ty
sequence
integer :: ii
end type
type(ty) :: obj
obj%ii=10
call s1(obj)
if(obj%ii == 20 ) then
print*, "pass"
else
print*, "fail"
endif
end block
end

subroutine s1( d1)
use m1 
type(ty) :: d1
d1%ii=20
end subroutine
