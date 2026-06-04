module m1
  type b
    integer(8)::x
    class(*),allocatable::y(:)
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
  !    print '("v%x:",z16.16)',loc(v%x)
  !    print '("v%x%y:",z16.16)',loc(v%x%y)
    select type(p=>v(2)%x(2)%y)
     type is (character(*))
      if (p(2)    /='12') print *,1002
      p (2)   ='ab'
     end select
!$omp end parallel
    select type(p=>v(2)%x(2)%y)
     type is (character(*))
      if (p (2)   /='12') print *,4002,p(2)
     end select
end

call s1
      print *,'sngg959p : pass'
      end
