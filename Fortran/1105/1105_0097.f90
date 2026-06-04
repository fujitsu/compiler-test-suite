module m1
  type b
    integer(8)::x
    class(*),allocatable::y
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
      allocate(v%x%y,source='12')
!$omp parallel firstprivate(v)
    !  print '("v%x:",z16.16)',loc(v%x)
    !  print '("v%x%y:",z16.16)',loc(v%x%y)
    select type(p=>v%x%y)
     type is (character(*))
      if (p    /='12') print *,1002
      p    ='ab'
     end select
!$omp end parallel
    select type(p=>v%x%y)
     type is (character(*))
      if (p    /='12') print *,4002,p
     end select
end

call s1
      print *,'sngg951p : pass'
      end
