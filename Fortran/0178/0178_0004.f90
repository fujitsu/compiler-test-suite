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
interface
function ifun(iii) 
use m1
type(xx) ::ifun
end function
end interface
type(xx) ::xxa
xxa=xxa
xxa= ifun(iii)
print *,'pass'
end

function ifun(iii) 
use m1
type(xx) ::ifun
iii=iii
end function
