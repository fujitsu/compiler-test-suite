module m
type ty
  integer :: ii = 3
end type
type,extends(ty) :: tty
 integer :: jj = 5
end type
type(tty),target,save :: trg
end module 
module m2
use m
integer::a(5)
class(ty),pointer::cptr
data a, cptr /5*10,trg/
end
use m2
if(any(a.ne.[10,10,10,10,10]))print*,"101"
   select type(A=>cptr)
  type is(tty)
     if(A%jj.ne. 5) print*,"121"
  class default
    print*,"122"
  end select
  print*,"Pass"
end

