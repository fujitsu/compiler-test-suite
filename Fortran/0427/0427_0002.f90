module mod
interface
subroutine sub(a)
integer a
end subroutine
end interface
end

module mod1
use mod
private
end 

module mod2
use mod1
end

use mod1
print *,'pass'
end
