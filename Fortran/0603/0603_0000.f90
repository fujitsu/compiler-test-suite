module m
type ty
  integer :: ii = 3
end type
type,extends(ty) :: tty
 integer :: jj = 5
end type
type(tty),target,save :: trg
class(ty),pointer::cptr=>trg
end
use m
  select type(A=>cptr)
  type is(tty)
     if(A%jj.ne. 5) print*,"121"
  class default
    print*,"122"
  end select
  print*,"Pass"
end

