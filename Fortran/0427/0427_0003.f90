module mod
interface
subroutine sub(a)
integer a
end subroutine
end interface
end

module mod1
use mod
interface
function fun(a)
integer a
end function
end interface
private
end 

module mod2
use mod1
end

use mod2
print *,'pass'
end
