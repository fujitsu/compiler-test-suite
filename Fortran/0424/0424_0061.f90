module m
  integer :: s1_called=0
  integer :: s2_called=0
contains
  subroutine s1
    integer :: omp_get_thread_num
    s1_called=omp_get_thread_num()+1
  end subroutine
  subroutine s2
    integer :: omp_get_thread_num
    s2_called=omp_get_thread_num()+1
  end subroutine
end module

use m
integer :: omp_get_thread_num
procedure() :: a
!$omp threadprivate(a)
pointer :: a
!$omp parallel
if (omp_get_thread_num() == 0) a => s1
if (omp_get_thread_num() == 1) a => s2
if (omp_get_thread_num() <= 1) call a
!$omp end parallel

if (s1_called /= 1) print *,1
if (s2_called /= 2) print *,2
print *,'pass'
end
