module m1
  type b
    integer(8)::x
    character(:),allocatable::y(:)
  end type
  type a
     class (*),allocatable::x(:)
  end type
end
subroutine s1
use m1
  type (a):: v(2)
  call omp_set_num_threads(1)
  allocate(b::v(2)%x(2))
select type(p=>v(2)%x)
  type is(b)
      allocate(p(2)  %y(2),source='12')
end select
!$omp parallel firstprivate(v)
select type(p=>v(2)%x)
  type is(b)
!     print '("v%x:",z16.16)',loc(v%x)
!     print '("v%x%y:",z16.16)',loc(v%x%y)
      if (p(2)  %y(2)/='12') print *,1002
      p(2)  %y(2)='ab'
end select
!$omp end parallel
select type(p=>v(2)%x)
  type is(b)
      if (p(2)  %y(2)/='12') print *,4002,p(2)  %y(2)
end select
end

call s1
      print *,'sngg962p : pass'
      end
