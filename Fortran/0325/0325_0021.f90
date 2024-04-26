module mmma
integer aaaa
end

use mmma
!$OMP THREADPRIVATE(a1)
common a2
call sub()
print *,'pass'
end

subroutine sub()
use mmma
save a1
!$OMP THREADPRIVATE(a1)
common a2
end subroutine

module mod
use mmma
!$OMP THREADPRIVATE(a1)
common a2
end

module mod1
use mmma
contains
subroutine sub()
save a1
!$OMP THREADPRIVATE(a1)
common a2
end subroutine
end

module mod2
use mmma
!$OMP THREADPRIVATE(a1)
contains
subroutine sub()
common a2
end subroutine
end

module mod3
contains
subroutine sub()
use mmma
save a1
!$OMP THREADPRIVATE(a1)
common a2
end subroutine
end

module mod4
!$OMP THREADPRIVATE(a1)
contains
subroutine sub()
use mmma
common a2
end subroutine
end

