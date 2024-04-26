module m1
type base
 integer :: vvv
end type

type,extends(base)::x
  integer::x1
end type
type xx
integer :: jj
class(x),pointer :: iiia
end type
end

use m1
type(xx) ::iii
xxa= ifun(iii)
print *,'pass'
contains

function ifun(iii) result(sub)
use m1
type(xx) ::iii
end function
end
