MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
end
subroutine s1
use  m1
  TYPE(x) :: v(100),w(100),g
logical::m(100)=.false.
m(1)=.true.
allocate(v(1)% z(1),source=1)
where(m)
w= merge(  v , g , .true.)
end where
if (w(1)%z(1)/=1 ) print *,101
do k=2,100
if (allocated(w(k)%z ) )print *,102
end do
end
do k=1,3000
call s1
end do
print *,'pass'
end
