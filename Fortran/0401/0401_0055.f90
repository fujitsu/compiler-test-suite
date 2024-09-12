module m1
  integer::k1
  !$omp threadprivate(k1)
contains
  subroutine m1s
    integer omp_get_thread_num
    if (k1/=omp_get_thread_num()+1) print *,101
  end subroutine m1s
end module m1

module m2
  use m1,only:k2=>k1
  !$omp threadprivate(k1)
  bind(c):: k1
contains
  subroutine m2s
    integer omp_get_thread_num
    if (k1/=omp_get_thread_num()+2) print *,201
    if (k2/=omp_get_thread_num()+1) print *,202
  end subroutine m2s
end module m2

subroutine s1
  use m1
  integer omp_get_thread_num
  k1=omp_get_thread_num()+1
end subroutine s1

subroutine s2
  use m2
  integer omp_get_thread_num
  k1=omp_get_thread_num()+2
end subroutine s2

use m1,only: m1s
use m2
integer omp_get_thread_num
!$omp parallel
call s1
call s2
call m1s
call m2s
if (k1/=omp_get_thread_num()+2) print *,301
!$omp end parallel
print *,'pass'
end
