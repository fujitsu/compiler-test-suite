module mod1
type ty
 integer :: jj
end type

type,extends(ty) :: ty2
  integer :: ii
 contains
  procedure :: addit
  generic :: operator(.plus.) => addit
end type

contains

 function addit(a,b)
  class(ty2),IntENT(IN) :: a
  integer,intent(in) :: b
  class(ty2),allocatable :: addit
  allocate(addit)
  addit%ii = a%ii + b
 end function

end module

program main
use mod1
 
class(ty2),allocatable :: obj
allocate(obj)
obj%ii = 10

 select type (tbo => obj .plus. 10)
 type is(ty2)
 if(tbo%ii .EQ. 20) then
  print*,'pass'
 else
  print*,101
 endif
 end select

end program

