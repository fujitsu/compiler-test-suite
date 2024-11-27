module mod
interface
module subroutine sub_1()
end subroutine
end interface
pointer(ptr,ia)
integer::k
integer   ::ib  
end

submodule (mod) smod1
contains
function   k()
end function   
function   ptr()
end function   
end

use mod
print *,'pass'
end

