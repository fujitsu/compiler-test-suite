module mod
  implicit none
  integer :: n , nn
common /cmn/nn,n
!$omp threadprivate(/cmn/)
  contains
    subroutine foo()
    real var(n:n+1,nn:nn+1)   
    if (any(lbound(var)/=n)) print *,3001
    if (any(ubound(var)/=n+1)) print *,3002
    end subroutine
end
use mod
integer::omp_get_thread_num
!$omp parallel 
n= omp_get_thread_num()+1
nn=n
call foo
!$omp end parallel
print *,'pass'
end

