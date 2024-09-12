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

if(s1/=20) then
 print*,'101'
else
 x=x+1
endif
end subroutine

subroutine sub2(dmy,arg)
class(ty1) :: dmy
real :: arg
integer :: s2
s2 = int(arg)
s2 = dmy%i
if(s2/=10) then
 print*,'102'
else
 x=x+1
endif
end subroutine
end module

use mod1
class(ty),allocatable  :: obj
class(ty1),allocatable :: obj1
integer, target :: val
integer, pointer::p

allocate(obj)
allocate(obj1)
val=10
p=>val
obj%i=10
obj1%i=10

call obj1%gnr(p)
call obj1%gnr(2.0)
print*, "Pass"

end
