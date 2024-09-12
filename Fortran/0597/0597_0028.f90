module m1
  type y3
    integer::x(3)
    character(len=3)::msg(2)
  end type
  type y2
    type(y3)::obj(2)
  end type

contains
subroutine s4
type(y2), allocatable::v(:)
allocate(v(2))
v(1)%obj(1)%x = 11
v(2)%obj(1)%x = 12
v(1)%obj(1)%msg = "AAA"
v(2)%obj(1)%msg = "BBB"
!$omp parallel
!$omp sections lastprivate(v)
!$omp section
deallocate(v)
allocate(v(3))
v(1)%obj(2)%x = 21
v(2)%obj(2)%x = 22
v(3)%obj(2)%x = 23
v(1)%obj(2)%msg = "CCC"
v(2)%obj(2)%msg = "DDD"
v(3)%obj(2)%msg = "EEE"
!$omp end sections
!$omp end parallel
if (.not. allocated(v)) print *,101
if (size(v) /= 3) print*, 102
if (all(v(1)%obj(2)%x /= 21)) print*, 103
if (all(v(2)%obj(2)%x /= 22)) print*, 104
if (all(v(3)%obj(2)%x /= 23)) print*, 105
if (all(v(1)%obj(2)%msg /= "CCC")) print*, 106
if (all(v(2)%obj(2)%msg /= "DDD")) print*, 107
if (all(v(3)%obj(2)%msg /= "EEE")) print*, 108
end subroutine s4
end

use m1
call s4
print *,'PASS'
end
