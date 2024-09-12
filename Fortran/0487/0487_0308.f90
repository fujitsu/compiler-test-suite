module mod
interface
module subroutine sub()
end subroutine
end interface
integer::k=1
end

submodule (mod) smod1
contains
subroutine   k()
end 
end

submodule (mod:smod1) smod2
contains
module subroutine   sub()
call k
end
end

use mod
call sub
if (k/=1) print *,101
print *,'pass'
end
