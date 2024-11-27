module mod1
type ty
integer::i
contains
procedure,pass(dmy) :: prc1 => sub1
generic :: gnr=>prc1
end type

type,extends(ty)::ty1
contains
procedure,pass      :: prc2 => sub2
generic :: gnr=>prc2
end type

integer::x = 1
 
contains
subroutine sub1(dmy,arg)
class(ty) :: dmy
integer,optional :: arg
integer :: s1
if(present(arg)) then
 s1 = arg+dmy%i
else
 s1 = dmy%i
end if

if(s1/=10) then
 print*,'101'
else
 if(sizeof(dmy)/=4) print*,'201'
 x=x+1
endif
end subroutine

subroutine sub2(dmy,arg)
class(ty1) :: dmy
real :: arg
integer :: s2
s2 = int(arg) + dmy%i
if(s2/=20) then
 print*,'102'
else
 x=x+1
 if(sizeof(dmy)/=4) print*,'202'
endif
end subroutine
end module

use mod1
class(ty1),allocatable :: obj1
integer,pointer::p
ALLOCATE(p, SOURCE=0)
allocate(obj1)

obj1%i=10

call obj1%gnr(p)

call obj1%gnr(10.0)

if(x==3) print*,"PASS"

end
