module mod1
implicit none
integer,parameter :: n(4) = 4
type ty(k1,k2,l1)
  integer,kind::k1,k2
  integer,kind ::l1
  integer :: ii =2
  integer(kind = 2) :: aa(k1) = 5
  integer :: jj 
  integer(kind = k1+2) :: arr(k1:k2) = k1+2
end type
contains
subroutine sub(dmy1)
type(ty(2,5,5))::dmy1
type ty1
  type(ty(n(1)/2,n(3)+1,5)):: cmp                        
end type
type(ty1),save :: obj
obj%cmp%jj = 10
dmy1 = obj%cmp
end subroutine
end module
program main
use mod1
implicit none
type(ty(2,5,5))::obj
if(size(obj%arr) .eq. 4 .and. obj%arr(3) .eq. 4) then
 print*,"PASS"
else
 print*,"ERROR"
endif
end program
