module m1
  type c
    integer(8)::d
  end type
  type,extends(c)::ce
    character(:),allocatable::cv
  end type
  type b
    integer(8)::x
    class(c),allocatable::y
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
      allocate(ce::v%x%y)
    select type(p=>v%x%y)
     type is (ce)
      allocate(p%cv,source='12')
    end select
!$omp parallel firstprivate(v)
     ! print '("v%x:",z16.16)',loc(v%x)
     ! print '("v%x%y:",z16.16)',loc(v%x%y)
    select type(p=>v%x%y)
     type is (ce)
      if (p%cv /='12') print *,1002
      p%cv ='ab'
    end select
!$omp end parallel
    select type(p=>v%x%y)
     type is (ce)
      if (p%cv /='12') print *,4002
     end select
end

call s1
      print *,'sngg952p : pass'
      end
