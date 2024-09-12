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
  print*,"pass"
end
