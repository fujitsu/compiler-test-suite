module mod1
implicit none
type ty(k1,k2,k3)
  integer,kind:: k1
  integer,kind:: k2=6
  integer,kind:: k3
  integer (kind=2)::i=k1+k2+k3
  integer::jj
end type
contains
subroutine sub(dmy)
 type(ty(1,6,2))::dmy
 dmy%jj = 10
end subroutine
end module
program main
use mod1
implicit none
type(ty(1,k3=2))::obj
call sub(obj)
if(obj%jj == 10) then
 print*,"PASS"
else
 print*,"ERROR"
endif
end
