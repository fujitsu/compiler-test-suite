module mod
interface
module subroutine sub()
end subroutine
end interface
integer::k=1
end

submodule (mod) smod1
integer::k=2
contains
module subroutine sub()
if (k/=2) print *,301
end subroutine
end

use mod
call sub
if (k/=1) print *,302
print *,'pass'
end
