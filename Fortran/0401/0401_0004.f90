module m
  allocatable j(:)
  !$omp threadprivate(j)
  save j
end module m

use m
allocatable i(:)
!$omp threadprivate(i)
save i

integer :: omp_get_thread_num

!$omp parallel
allocate(i(1))
allocate(j(1))
i(1) = omp_get_thread_num()
j(1) = omp_get_thread_num()+1
!$omp end parallel
!$omp parallel
if (i(1)/=omp_get_thread_num()) print *,1
if (j(1)/=omp_get_thread_num()+1) print *,2
!$omp end parallel

print *,'pass'
end
