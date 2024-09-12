module m1
 integer,private::a
 type x
    integer::x1
    integer,private::x2
 end type
 type (x)::v1
end
module m2
use m1
 type (x)::v2
 type y
    integer::y1
    integer,private::y2
 end type
type (y) :: yv
contains
subroutine ss
a=1
yv%y2=1
end subroutine
end
use m2
call ss
print *,'pass'
end

