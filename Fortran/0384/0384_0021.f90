call test01()
print *,"pass"
end

module mod1
 type ,bind(c) :: sss
   integer :: iii
 end type
end 
module mod
use mod1
 bind(c) :: a
end 

subroutine test01()
use mod
use mod1,bbb => sss
interface
subroutine subb()
import a,sss,bbb
end subroutine
end interface
type (sss) :: str
type (bbb) :: str2
end subroutine

subroutine test02()
use mod
use mod1
i=sin(2.0)
end
