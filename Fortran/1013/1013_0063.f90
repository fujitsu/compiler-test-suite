integer function iifun()
use mod
 iifun = i
end
integer function jjfun()
use mod
 jjfun = j
end

module mod
integer i;
!$omp threadprivate(i)
integer :: j = 2;
!$omp threadprivate(j)
contains
subroutine init
i = 1
end subroutine
end 

use mod
call init
print *, iifun()
print *, jjfun()
end

