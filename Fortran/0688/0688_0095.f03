module mod1
interface sub
module procedure s_i, s_r
end interface
contains
subroutine s_i(n)
integer, intent(in) :: n
!$omp task firstprivate(n)
if(n/=1) print *,'err'
!$omp endtask
end subroutine s_i
subroutine s_r(x)
real, intent(in) :: x
!$omp parallel firstprivate(x)
!$omp taskwait
if(x/=2.0) print *,'err'
!$omp end parallel
end subroutine s_r
end module mod1
use mod1
!$omp parallel default(none)
!$omp task mergeable untied
call sub(1)
call sub(2.0)
!$omp endtask
!$omp endparallel
print *,'pass'
end
