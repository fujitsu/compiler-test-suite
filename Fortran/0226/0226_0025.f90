call test01()
call test02()
print *,'pass'
end
module mod
intrinsic ::sin
end
subroutine test01()
use mod
implicit none
procedure(sin) :: ifun
!$omp task  default(none)
!$omp task
if (1.eq.2)print *,ifun(1.0)
!$omp end task
!$omp end task
end
subroutine test02()
use mod
implicit none
procedure(sin) :: ifun
!$omp task  default(none)
if (1.eq.2)print *,ifun(1.0)
!$omp end task
end
real function ifun()
ifun=1.0
end
