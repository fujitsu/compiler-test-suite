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
v%x1=101
if (allocated(v%x2))write(6,*) "NG"
allocate (v%x2(10))
v%x2=(/(j,j=101,110)/)
allocate (v%x3)
v%x3%x1=201
if (allocated(v%x3%x2))write(6,*) "NG"
v%x3%x3=>null()
allocate (v%x3%x2(10))
v%x3%x2=(/(j,j=201,210)/)
if (any(v%x3%x2/=(/(j,j=201,210)/)))write(6,*) "NG"
deallocate (v%x3)
deallocate (v)
end
do i=1,10
 call s1
end do
print *,'pass'
end
