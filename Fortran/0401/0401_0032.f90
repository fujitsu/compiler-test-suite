module m1
  common /cmn/ a
end module

use m1
common /cmn/ i
bind(c) /cmn/
!$omp threadprivate(/cmn/)
integer :: omp_get_thread_num, omp_get_max_threads
integer(8),allocatable :: addr_i(:)
allocate(addr_i(omp_get_max_threads()))
!$omp parallel
addr_i(omp_get_thread_num()+1) = loc(i)
!$omp end parallel
if (any(addr_i(2:)==addr_i(1))) print *,1
print *,'pass'
end 
