module m1
integer ::k=1
complex*16 y0(10)/1,2,3,4,5,6,7,8,9,10/
complex*16 yy0(10)/1,2,3,4,5,6,7,8,9,10/
type x
  complex*16,allocatable,dimension(:)::x0
end type
end

subroutine ss1()
use m1
type(x)::xv1
xv1=x(y0+yy0)

end
call ss1()
print *,'pass'
end
