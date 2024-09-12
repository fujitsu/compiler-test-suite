module mo1
interface operator(.eq.)
function ifun(i,j)
intent(in) :: i,j
character :: j
end function
end interface
integer :: aaa
end
function ifun(i,j)
intent(in) :: i,j
character :: j
ifun=i
print *,j
end function
module m02
use mo1
private :: ifun
end
module m03
use mo1
use mo1,only:aaa
private
end

use m02
use m03
print *,'pass'
end
