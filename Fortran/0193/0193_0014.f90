module mod
interface
module subroutine sub_1()
end subroutine
end interface
pointer(ptr,ia)
integer   ::ib  
end

submodule (mod) smod1
contains
module subroutine sub_1()
end subroutine
function   ptr()
end function   
end

submodule (mod) smod2
contains
function   ia()
end function   
end

submodule (mod) smod3
contains
function   ib()
end function   
end

use mod
print *,'pass'
end

