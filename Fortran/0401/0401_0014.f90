module m
  !$omp threadprivate(i1, i2, j1, j2)

  protected i1
  allocatable i1(:)

  allocatable i2(:)
  protected i2

  integer, protected, allocatable :: j1(:)
  integer, allocatable, protected :: j2(:)

  contains
    subroutine ms
      integer :: omp_get_thread_num
      !$omp parallel
      allocate(i1(1))
      allocate(j1(1))
      allocate(i2(1))
      allocate(j2(1))
      i1(1) = omp_get_thread_num()
      j1(1) = omp_get_thread_num()
      i2(1) = omp_get_thread_num()
      j2(1) = omp_get_thread_num()
      !$omp end parallel
      !$omp parallel
      if (i1(1) /= omp_get_thread_num()) print *,1
      if (j1(1) /= omp_get_thread_num()) print *,2
      if (i2(1) /= omp_get_thread_num()) print *,3
      if (j2(1) /= omp_get_thread_num()) print *,4
      !$omp end parallel
    end subroutine ms
end

use m
call ms
print *,'pass'
end
