call test01()
call test02()
print *,'pass'
end
module mod
interface 
integer function external()
end 
end interface
end
subroutine test01()
use mod
procedure(external) :: ifun
!$omp task  default(none)
!$omp task
if (1.eq.2)print *,ifun()
!$omp end task
!$omp end task
end
subroutine test02()
use mod
procedure(external) :: ifun
!$omp task  default(none)
if (1.eq.2)print *,ifun()
!$omp end task
end
function ifun()
ifun=1
end
