module m1
  type b
    integer(8)::x
    integer     ,allocatable::y(:)
  end type
  type a
     type (b),allocatable::x(:)
  end type
end
subroutine s1
use m1
  type (a):: v(2)
  call omp_set_num_threads(1)
  allocate(b::v(2)%x(2))
      allocate(v(2)%x(2)%y(2),source=1)
!$omp parallel firstprivate(v)
      !print '("v%x:",z16.16)',loc(v%x)
      !print '("v%x%y:",z16.16)',loc(v%x%y)
      if (v(2)%x(2)%y(2)/=1) print *,1002
      v(2)%x(2)%y(2)=34  
!$omp end parallel
      if (v(2)%x(2)%y(2)/=1   ) print *,4002,v(2)%x(2)%y(2)
end

call s1
      print *,'sngg958p : pass'
      end
