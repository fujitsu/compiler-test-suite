module mod1

type ty
  integer::i
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
 interface
 subroutine s()
 end subroutine
 end interface
 call s()
end

subroutine s()
use mod1

type tt
 class(ty2),allocatable :: obj(:,:,:)
end type

type(ty) :: obj2
type(tt) :: wrap
allocate(wrap%obj(2,3,4))
wrap%obj(2,1,2)%i=5

call wrap%obj(2,1,2)%gnr(5)

call wrap%obj(2,1,2)%gnr((/2,3/))
obj2%i=2
call wrap%obj(2,1,2)%gnr(obj2)
if(x==4) print*,"PASS"
end subroutine

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
   if(sizeof(dmy)/=4) print*,'201'
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
   if(sizeof(dmy)/=4) print*,'202'
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
   x=x+1
   if(sizeof(dmy)/=4) print*,'203'
  endif
end subroutine

