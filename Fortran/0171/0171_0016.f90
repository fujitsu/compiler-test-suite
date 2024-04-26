module m1
type z
integer:: q
end type
end
subroutine sub( c1)
use m1
type(z)      :: c1(*)
if (c1(1)%q /=1) print *,3101
end subroutine
subroutine sub0( c1)
use m1
type(z)      :: c1
if (c1%q /=1) print *,3102
end subroutine

use m1
integer::k1=1,k2=2
type(z) :: x1(2)
type(z) :: x0
type y
type(z) :: x0
type(z) :: x1(2)
end type
type (y):: y1
integer::v(2)=[2,1]
  
x1 =z(1)
x0 =z(1)
y1%x1 =z(1)
y1%x0 =z(1)
 call sub( (x1(1:2)))
 call sub( (x1(1:k2)))
 call sub( (x1(k1:2)))
 call sub( (x1(v   )))
 call sub( (x1      ))
 call sub( (y1%x1(1:2)))
 call sub( (y1%x1(1:k2)))
 call sub( (y1%x1(k1:2)))
 call sub( (y1%x1(k1:2)))
 call sub( (y1%x1      ))
 call sub0( (x0      ))
 call sub0( (x1(2)   ))
 call sub0( (x1(k2)  ))
 call sub0( (y1%x0      ))
 call sub0( (y1%x1(2)   ))
 call sub0( (y1%x1(k2)  ))
print *,'pass'
end
