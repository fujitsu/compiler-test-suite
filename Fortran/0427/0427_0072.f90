module mo1
type ty1
integer :: ii=10
end type
integer :: aaa
end
module m02
use mo1
private ::aaa,ty1,xxx
integer :: xxx
contains
function ifun()
type (ty1) :: ifun
end function
end
module m03
use mo1
use mo1,only:ty1
private
integer :: xxx
end

module moda
use m02
use m03
end
use moda
print *,'pass'
end