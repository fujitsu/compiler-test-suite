module m1
  type b
    integer(8)::x
    integer     ,allocatable::y
  end type
  type a
     type (b),allocatable::x
  end type
end
subroutine s1
use m1
  type (a):: v
  call omp_set_num_threads(1)
  allocate(b::v%x)
      allocate(v%x%y,source=1)
!$omp parallel firstprivate(v)
      !print '("v%x:",z16.16)',loc(v%x)
      !print '("v%x%y:",z16.16)',loc(v%x%y)
      if (v%x%y/=1) print *,1002
      v%x%y=34  
!$omp end parallel
      if (v%x%y/=1   ) print *,4002,v%x%y
end

call s1
      print *,'sngg950p : pass'
      end
