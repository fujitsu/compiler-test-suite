module mod
interface
module subroutine sub()
end subroutine
end interface
integer::k=1
end

submodule (mod) smod1
integer::kk=2
contains
module subroutine sub()
print *,kk
end subroutine
end

use mod
call sub
print *,'pass'
end

