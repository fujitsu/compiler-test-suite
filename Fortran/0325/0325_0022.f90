module mmma
!$OMP THREADPRIVATE(a1)
end

use mmma
common a2
call sub()
print *,'pass'
end

subroutine sub()
use mmma
common a2
end subroutine

module mod
use mmma
common a2
end

module mod1
contains
subroutine sub()
use mmma
common a2
end subroutine
end

module mod2
use mmma
contains
subroutine sub()
common a2
end subroutine
end

