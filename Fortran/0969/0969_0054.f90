call test01()
print *,"pass"
end

module  mod1
type ty1
 integer :: ii
end type
type(ty1) :: str
end
module  mod2
interface ty1
module procedure ifun
end interface
interface ttt
module procedure ifun
end interface
contains
function ifun(k)
ifun=1
i=k
i=i
end function
end

subroutine test01()
use mod1
use mod2
ixx=1
jxx=1
kxx=1
print *,ty1(1+i)
print *,ty1(ii=jxx)
print *,ty1(k=ixx)
end
