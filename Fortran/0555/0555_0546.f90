module mod1
type ty
integer::i
contains
procedure,pass(dmy) :: prc1 => sub1
generic :: gnr=>prc1
end type

type,extends(ty)::ty1
contains
procedure,pass(dmy) :: prc2 => sub2
generic :: gnr=>prc2
end type

integer::x = 1
 
contains
subroutine sub1(arg1,dmy)
class(ty) :: dmy
integer :: arg1
integer :: s1
s1 = arg1+dmy%i
if(s1/=10) then
 print*,'101'
else
 x=x+1
endif
end subroutine

subroutine sub2(dmy,arg2)
class(ty1) :: dmy
real :: arg2
integer :: s2
s2 = int(arg2)+dmy%i
if(s2/=8) then
 print*,'102'
else
 x=x+1
endif
end subroutine
end module

use mod1
class(ty1),allocatable :: obj
allocate(obj)
obj%i=5

call obj%gnr(5)

call obj%gnr(3.0)
if(x==3) print*,"PASS"

end
