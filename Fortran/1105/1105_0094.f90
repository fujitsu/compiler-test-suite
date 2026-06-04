module m1
  type b
    integer(8)::x
  end type
  type,extends(b)::be
    character(:),allocatable::y
  end type
  type a
     class(b),allocatable::x
  end type
end
subroutine s1
use m1
  type (a):: v
  call omp_set_num_threads(1)
  allocate(be::v%x)
  select type(p=>v%x)
    type is(be)
      allocate(p%y,source='12')
  end select
!$omp parallel firstprivate(v)
      !print '("v%x:",z16.16)',loc(v%x)
  select type(p=>v%x)
    type is(be)
      !print '("v%x%y:",z16.16)',loc(p%y)
      !if (p%y/='12') print *,1002
      p%y='ab'
  end select
!$omp end parallel
  select type(p=>v%x)
    type is(be)
      if (p%y/='12') print *,4002,p%y
  end select
end

call s1
      print *,'sngg948p : pass'
      end
