module m1
  type y3
    integer::x
  end type
end
subroutine s4
use m1
type(y3), allocatable::v
!$omp parallel
!$omp sections lastprivate(v)
allocate(v)
v%x=10
!$omp end sections
!$omp end parallel
if (.not. allocated(v)) print *,101
if (v%x  /= 10)  print *,102
end subroutine s4
call s4
print *,'PASS'
end
