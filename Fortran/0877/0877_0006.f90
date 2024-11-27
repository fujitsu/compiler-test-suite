module m1
type x
  integer::x1
end type
end
use m1
interface
subroutine su(a) 
use m1
class(x),pointer     :: a
end subroutine
end interface

class(x),pointer     :: xx
call su(xx)
end
subroutine su(a) 
use m1
class(x),pointer     :: a
end subroutine
