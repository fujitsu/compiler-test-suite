module mod
  implicit none
  integer :: n , nn
common /cmn/nn,n
!$omp threadprivate(/cmn/)
  contains
    subroutine foo()
    real var(n)   
    integer::k
    do k=1,n
      var(k)=k
    end do
    if (var(n)/=n) print *,var(n),n
    end subroutine
end
use mod
integer::omp_get_thread_num
!$omp parallel 
n= omp_get_thread_num()+1
if (n>1) n=100000
call foo
!$omp end parallel
print *,'pass'
end

