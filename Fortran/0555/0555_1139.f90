module mod1

type ty
  integer::i=0
  contains
  procedure,pass(dmy) :: prc1 => sub1
  generic :: gnr=>prc1
end type

type,extends(ty)::ty1
  contains
  procedure,public    :: prc2 => sub2
  generic :: gnr=>prc2
end type

type,extends(ty1)::ty2
  integer::j=0
  contains
  procedure,pass :: prc3 => sub3
  generic :: gnr=>prc3
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

class(ty2),allocatable :: obj
type(ty) :: obj2
allocate(obj)
obj%i=5

call obj%gnr(5)

call obj%gnr((/2,3/))
obj2%i=2
call obj%gnr(obj2)
if(x==4) print*,"PASS"

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

