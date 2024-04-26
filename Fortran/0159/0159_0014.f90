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
type(ty1) ::ss
ixx=1
jxx=3
kxx=4
i=0
if (    ty1(1+i).ne.1) print *,'err'
ss=ty1(ii=jxx)
if (    ss%ii     .ne.3) print *,'err'
if (    ty1(k=ixx).ne.1) print *,'err'
end
