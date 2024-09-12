module mo1
interface operator(.aaa.)
function ifun(i,j)
intent(in) :: i,j
end function
end interface
end
function ifun(i,j)
intent(in) :: i,j
ifun=i
end function
module m02
use mo1
private :: ifun
end
module m03
use mo1,only:operator(.bbb.)=>operator(.aaa.),operator(.aaa.)
private ::operator(.aaa.),operator(.bbb.)
end

use m02
use m03
print *,'pass'
end
