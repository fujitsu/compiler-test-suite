module m1
type x 
  integer::x1=1
end type
contains
  subroutine s1
  call s1s
  contains
    subroutine s1s
    type(x)::v
    v%x1=2
!$omp parallel firstprivate(v)
    if (v%x1/=2) print *,101
    v%x1=3
    if (v%x1/=3) print *,103
!$omp end parallel
    if (v%x1/=2) print *,102
    end subroutine
  end subroutine
  subroutine s2
    type(x)::v
    if (v%x1/=1) print *,201
  end subroutine
end
use m1
call s1
call s2
print *,'pass'
end
