  module m1
    type x
      integer::x1
      integer,allocatable::x2(:)
      type(x),pointer::x3
    end type
  end
subroutine s1
use m1
type(x),pointer::v
allocate (v)
allocate (v%x2(10))
deallocate (v)
end
do i=1,10
 call s1
end do
print *,'pass'
end
