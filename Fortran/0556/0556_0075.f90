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
procedure,pass(dmy) :: prc3 => sub3
generic :: gnr=>prc2,prc3
end type
 
type,extends(ty1)::ty2
contains
procedure,pass      :: prc4 => sub4
procedure,nopass    :: prc5 => sub5
generic :: gnr=>prc4,prc5
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
 
subroutine sub3(dmy,arg3)
class(ty1) :: dmy
type(ty) :: arg3
integer :: s3
s3 = arg3%i+dmy%i
if(s3/=7) then
 print*,'103'
else
 x=x+1
endif
end subroutine
 
subroutine sub4(dmy,arg4)
class(ty2) :: dmy
character :: arg4
character :: s4
s4 = arg4
if(s4/='s' .and. dmy%i/=5) then
 print*,'104'
else
 x=x+1
endif
end subroutine
 
subroutine sub5(dmy,arg5)
class(ty) :: dmy
type(ty1) :: arg5
integer :: s5
s5 = arg5%i+dmy%i
if(s5/=17) then
 print*,'105'
else
 x=x+1
endif
end subroutine
end module
 
use mod1
type con
 type(ty2) :: obj
end type
 
type(con) :: container
type(ty)  :: obj2
type(ty1) :: obj3
 
container%obj%i=5
 
call container%obj%gnr(5)
 
call container%obj%gnr(3.0)
obj2%i=2
call container%obj%gnr(obj2)
 
call container%obj%gnr('s')
obj2%i=10
obj3%i=7
call container%obj%gnr(obj2,obj3)
if(x==6) print*,"Pass"
 
end



