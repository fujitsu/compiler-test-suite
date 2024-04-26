module m1
type base
 integer :: vvv
end type

type,extends(base)::x
  integer::x1
end type
type xx
class(x),allocatable :: iiia
end type
end

use m1
type (x),pointer     :: xxa
type(xx) ::iii
allocate(iii%iiia)
xxa=> ifun(iii)
print *,'pass'
contains

function ifun(iii) result(sub)
use m1
type (x),pointer     :: sub
type(xx) ::iii
end function
end
