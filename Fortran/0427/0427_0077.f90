module mo1
type ty1
integer :: ii=10
end type
integer :: aaa
end
module m02
use mo1
private ::aaa,ty1,xxx,ifun
integer :: xxx
intrinsic int
contains
function ifun()
type (ty1) :: ifun
end function
end
module m03
use mo1
use mo1,only:ty1
private ::aaa,ty1
end

module moda
use m02
use m03
end
module modb
use moda
end
module modc
use modb
use moda
end
module modd
use modc
use modb
integer :: iiii
private::iiii
end
module modx
integer :: xxx
end 
module mode
use modd
use modc
use modx
end
module modf
use mode
use modd,only :sss=>int
use modb,only :ppp=>int
use moda,only :zzz=>int,int
use modc,only :www=>int
private::sss,ppp,www,int
end

use modf
print *,'pass'
end