module mod
interface
module subroutine sub_1()
end subroutine
end interface
integer::k
end
module mod2
use mod
integer::kk
end

submodule (mod) smod1
contains
function   k()
end function   
end

submodule (mod2) smod2
contains
function   kk()
end function   
end

use mod
print *,'pass'
end

