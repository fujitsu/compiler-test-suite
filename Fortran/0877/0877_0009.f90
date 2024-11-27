module m1
type x
  integer::x1
end type
end
use m1
interface
subroutine su(a) 
use m1
class(x)     :: a
end subroutine
end interface

type(x)  :: xx
call su(xx)
end
subroutine su(a) 
use m1
class(x)     :: a
end subroutine
