module m
  allocatable i1(:)
  private i1
  integer, allocatable :: i2(:)
  private i2
  !$omp threadprivate(i1,i2)
  contains 
    subroutine ms
      integer :: omp_get_thread_num
      !$omp parallel
      allocate(i1(1))
      allocate(i2(1))
      i1(1) = omp_get_thread_num()
      i2(1) = omp_get_thread_num()
      !$omp end parallel
      !$omp parallel
      if (i1(1) /= omp_get_thread_num()) print *,1
      if (i2(1) /= omp_get_thread_num()) print *,2
      !$omp end parallel
    end subroutine ms
end module m

use m
!$omp threadprivate(i1,i2)
call ms
i1=1
i2=2
if (i1/=1) print *,1
if (i2/=2) print *,2
print *,'pass'
end
