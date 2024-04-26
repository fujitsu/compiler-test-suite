module mod1
type ty
integer::i=0
contains
procedure,pass(dmy) :: prc1 => sub1
generic :: gnr=>prc1
end type

type,extends(ty)::ty1
integer::j=0
contains
procedure,pass      :: prc2 => sub2
procedure,pass(dmy) :: prc3 => sub3
generic :: gnr=>prc2,prc3
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
 if(sizeof(dmy)/=8) print*,'201'
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
 if(sizeof(dmy)/=8) print*,'202'
endif
end subroutine

subroutine sub3(dmy,arg3)
class(ty1) :: dmy
type(ty) :: arg3
integer :: s3
s3 = arg3%i+dmy%i
if(s3/=7) then
 print*,'103'
else
 x=x+1
 if(sizeof(dmy)/=8) print*,'203'
endif
end subroutine
end module

use mod1
class(ty1),allocatable :: obj
type(ty) :: obj2
allocate(obj)
obj%i=5

associate(tp=>obj)
 call tp%gnr(5)

 call tp%gnr(3.0)
 obj2%i=2
 call tp%gnr(obj2)
end associate

if(x==4) print*,"pass"

end
