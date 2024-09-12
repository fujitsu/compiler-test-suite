module m
  integer, save, pointer :: j=>null()
  !$omp threadprivate(j)
end module m

use m
integer, save, pointer :: i=>null()
!$omp threadprivate(i)

integer :: omp_get_thread_num
!$omp parallel
allocate(i)
allocate(j)
i=omp_get_thread_num()+1
j=omp_get_thread_num()+1
!$omp end parallel

!$omp parallel
if (i/=omp_get_thread_num()+1) print *,1
if (j/=omp_get_thread_num()+1) print *,2
!$omp end parallel

print *,'pass'
end
