module m1
  type b
    integer(8)::x
    character(:),allocatable::y
  end type
  type a
     class (*),allocatable::x
  end type
end
subroutine s1
use m1
  type (a):: v
  call omp_set_num_threads(1)
  allocate(b::v%x)
select type(p=>v%x)
  type is(b)
      allocate(p  %y,source='12')
end select
!$omp parallel firstprivate(v)
select type(p=>v%x)
  type is(b)
!     print '("v%x:",z16.16)',loc(v%x)
!     print '("v%x%y:",z16.16)',loc(v%x%y)
      if (p  %y/='12') print *,1002
      p  %y='ab'
end select
!$omp end parallel
select type(p=>v%x)
  type is(b)
      if (p  %y/='12') print *,4002,p  %y
end select
end

call s1
      print *,'sngg954p : pass'
      end
