module mod1

type ty
  integer::i=0
  contains
  procedure,pass(dmy) :: prc1 => sub1
end type

type,extends(ty)::ty1
  contains
  procedure,public    :: prc2 => sub2
end type

type,extends(ty1)::ty2
  integer::j=0
  contains
  procedure,pass :: prc3 => sub3
end type

integer::x = 1
interface
  subroutine sub1(arg,dmy)
    import ty
    class(ty) :: dmy
    integer :: arg
  end subroutine
  
  subroutine sub2(dmy,arg)
    import ty1
    class(ty1) :: dmy
    integer :: arg(2)
  end subroutine

  subroutine sub3(dmy,arg)
    import ty
    import ty2
    class(ty2) :: dmy
    type(ty) :: arg
  end subroutine
end interface
end module
 
program main
use mod1

type(ty2) :: act(2,3,8)
call s(act)

contains
subroutine s(obj)
class(ty2) :: obj(2,3,8)
type(ty) :: obj2
obj(1,2,7)%i=5

select type(obj)
class is(ty2)
 call obj(1,2,7)%prc1(5)

 call obj(1,2,7)%prc2((/2,3/))
 obj2%i=2
 call obj(1,2,7)%prc3(obj2)
 if(x==4) print*,"PASS"
end select
end subroutine
end

subroutine sub1(arg,dmy)
  use mod1
  class(ty) :: dmy
  integer :: arg
  integer :: s1
  s1 = arg+dmy%i
  if(s1/=10) then
   print*,'101'
  else
   x=x+1
  endif
end subroutine

subroutine sub2(dmy,arg)
  use mod1
  class(ty1) :: dmy
  integer :: arg(2)
  integer :: s2
  s2 = arg(2)+dmy%i
  if(s2/=8) then
   print*,'102'
  else
   x=x+1
  endif
end subroutine

subroutine sub3(dmy,arg)
  use mod1
  class(ty2) :: dmy
  type(ty) :: arg
  integer :: s3
  s3 = arg%i+dmy%i
  if(s3/=7) then
   print*,'103'
  else
   if(sizeof(dmy)==8) x=x+1
  endif
end subroutine

