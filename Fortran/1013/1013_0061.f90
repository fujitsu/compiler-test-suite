module mod
integer i;
!$omp threadprivate(i)
integer :: j = 2;
!$omp threadprivate(j)
contains
subroutine init
i = 1
end subroutine
integer function ifun()
 ifun = i
end function ifun
integer function jfun()
 jfun = j
end function jfun
end module

integer function iifun()
use mod
 iifun = i
end
integer function jjfun()
use mod
 jjfun = j
end

use mod
call init()
print *, ifun()
print *, jfun()
print *, iifun()
print *, jjfun()
end
