module m1
type x
  integer:: a
  integer,allocatable::z(:)
end type
integer(8)::ia
contains
subroutine ss(y,n)
  TYPE(x) :: y
if (.not.allocated(y%z) ) print *,111
if (y%a   /=2 ) print *,412
if (y%z(1)/=n ) print *,112
if (ia==loc(y%z(1))) then
 print '("01: ",z16.16)',ia
 print '("02: ",z16.16)',loc(y%z(1))
endif
deallocate(y%z)
end subroutine
end
subroutine s1
use m1
  TYPE(x) :: v,w
allocate(w%z(1),source=1)
ia=loc(w%z)
call ss(x(2,[1]),1)
end
do k=1,100
call s1
end do
print *,'pass'
end

