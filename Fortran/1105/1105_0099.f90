module m1
  type b
    integer(8)::x
    character(:),allocatable::y
  end type
  type a
     class (b),allocatable::x
  end type
end
subroutine s1
use m1
  type (a):: v
  call omp_set_num_threads(1)
  allocate(b::v%x)
      allocate(v%x%y,source='12')
!$omp parallel firstprivate(v)
!     print '("v%x:",z16.16)',loc(v%x)
!     print '("v%x%y:",z16.16)',loc(v%x%y)
      if (v%x%y/='12') print *,1002
      v%x%y='ab'
!$omp end parallel
      if (v%x%y/='12') print *,4002,v%x%y
end

call s1
      print *,'sngg953p : pass'
      end
