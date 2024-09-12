module m
  protected i1
  pointer i1

  pointer i2
  protected i2

  integer, protected, pointer :: j1
  integer, pointer, protected :: j2

  !$omp threadprivate(i1, i2, j1, j2)

  contains
    subroutine ms
      !$omp parallel
      allocate(i1)
      allocate(j1)
      allocate(i2)
      allocate(j2)
      !$omp end parallel
    end subroutine ms
end

use m
integer :: omp_get_thread_num
call ms
!$omp parallel
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
