module m
  interface
    module subroutine s(a)
      common/com/n
      integer :: n
      !$omp threadprivate(/com/)
      integer :: a(n)
    end subroutine
  end interface
contains
  module procedure s
    integer :: omp_get_thread_num
    if (omp_get_thread_num()+1 /= n) print *,101
    if (size(a) /= omp_get_thread_num()+1) print *,102
    a = 4
    if (any(a/=4)) print *,103
  end procedure
end

use m
common/com/n
integer,allocatable ::a(:)
!$omp threadprivate(/com/,a)
integer::omp_get_thread_num
!$omp parallel
n=omp_get_thread_num()+1
allocate(a(n))
call s(a)
if (any(a/=4)) print *,201
!$omp end parallel
print *,'pass'
end
