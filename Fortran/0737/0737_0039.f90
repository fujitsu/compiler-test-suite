module m1
integer ::k=1
integer(8),dimension(2,1)::y1=reshape((/1,2/),(/2,1/))
type x
  integer(8),allocatable,dimension(:,:)::x1
end type
contains
 elemental function xf1(a) result(r)
   integer(8)::a,r
   intent(in)::a
   r=a
 end function
end
subroutine ss1()
use m1
type(x)::xv1
xv1=x(                    xf1(y1(:,:))        )
end
call ss1()
print *,'pass'
end
