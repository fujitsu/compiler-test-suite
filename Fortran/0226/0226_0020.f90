call test01()
call test02()
print *,'pass'
end
module mod
contains
real function asin(r)
real :: r
asin=r
end
end
subroutine test01()
use mod
procedure(asin) :: ifun
!$omp task  default(none)
!$omp task
if (1.eq.2)print *,ifun(1.0)
!$omp end task
!$omp end task
contains
real function sin(r)
real::r
sin=r
end
end
subroutine test02()
use mod
procedure(asin) :: ifun
!$omp task  default(none)
if (1.eq.2)print *,ifun(1.0)
!$omp end task
contains
real function sin(r)
real :: r
sin=r
end
end
 real function ifun(i)
 real :: i
 ifun=1.0
 end
