module m
  pointer i1
  integer, pointer :: j1

  !$omp threadprivate(i1, i2, j1, j2)

  pointer i2
  integer, pointer :: j2
end

use m
integer :: omp_get_thread_num
!$omp parallel
allocate(i1)
allocate(j1)
allocate(i2)
allocate(j2)
i1 = omp_get_thread_num()
j1 = omp_get_thread_num()
i2 = omp_get_thread_num()
j2 = omp_get_thread_num()
!$omp end parallel
!$omp parallel
if (i1 /= omp_get_thread_num()) print *,1
if (j1 /= omp_get_thread_num()) print *,2
if (i2 /= omp_get_thread_num()) print *,3
if (j2 /= omp_get_thread_num()) print *,4
!$omp end parallel

print *,'pass'
end
