module mod
interface aa
subroutine sub(a)
integer a
end subroutine
end interface
end

module mod1
use mod,only:xxx=>aa,yyy=>aa
end 

module mod2
use mod1
end

use mod2
print *,'pass'
end
