module m1
  type y3
    integer::x(3)
    character(len=3)::msg(2)
  end type
end
subroutine s4
use m1
type(y3), allocatable::v(:)
allocate(v(3))
v(1)%x = 11
v(2)%x = 12
v(3)%x = 13
v(1)%msg = "AAA"
v(2)%msg = "BBB"
!$omp parallel
!$omp sections lastprivate(v)
!$omp section
deallocate(v)
allocate(v(2))
v(1)%x = 21
v(2)%x = 22
v(1)%msg = "CCC"
v(2)%msg = "DDD"
!$omp end sections
!$omp end parallel
if (.not. allocated(v)) print *,101
if (size(v) /= 2) print*, 102
if (all(v(1)%x /= 21)) print*, 103
if (all(v(2)%x /= 22)) print*, 104
if (all(v(1)%msg /= "CCC")) print*, 105
if (all(v(2)%msg /= "DDD")) print*, 106
end subroutine s4

call s4
print *,'PASS'
end
