module m1
  type b
    integer(8)::x
    character(:),allocatable::y(:)
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
      allocate(v(2)%x(2)%y(2),source='12')
!$omp parallel firstprivate(v)
 !     print '("v(2)%x:",z16.16)',loc(v(2)%x)
 !     print '("v(2)%x%y:",z16.16)',loc(v(2)%x(2)%y)
      if (v(2)%x(2)%y(2)/='12') print *,1002
      v(2)%x(2)%y(2)='ab'
!$omp end parallel
      if (v(2)%x(2)%y(2)/='12') print *,4002,v(2)%x(2)%y(2)
end

call s1
      print *,'sngg957p : pass'
      end
