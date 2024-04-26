module m
  implicit none
  integer :: n
!$omp threadprivate(n )
end
module mod
use m
  implicit none
  integer :: nn
!$omp threadprivate(nn )
  contains
    subroutine foo
    real var(-n:-nn,-n:-nn)   
    real var2(-n:-nn,-n:-nn)   
    real var3(-n:-nn,-n:-nn)   
    call       foo2(var,var2,var3)
    end subroutine
    subroutine foo2(var,var2,var3)
    real var(-n:,-n:)   
    real var2(-n:,-n:)   
    real var3(-n:,-n:)   
    integer::omp_get_thread_num
    if (any(lbound(var)/=-n)) print *,3001
    if (any(ubound(var)/=-nn)) print *,3002
    if (any(lbound(var2)/=-n)) print *,3001
    if (any(ubound(var2)/=-nn)) print *,3002
    if (any(lbound(var3)/=-n)) print *,3001
    if (any(ubound(var3)/=-nn)) print *,3002
    if (n/=omp_get_thread_num()+1) print *,9001
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

