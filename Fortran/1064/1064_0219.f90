module m1
complex(8),parameter,dimension(*)::ca=[(1,2),(3,4),(5,6),(7,8)]
complex(8),parameter,dimension(*)::cr=[(11,2),(12,4),(13,6),(14,8)]
type x
  real:: x1(4),x2(4)
end type
contains
subroutine s01(z,p)
real,pointer::p(:)
type (x),target:: z
if (z%x1(1)/=ca(1)%re .or. &
    z%x1(2)/=ca(2)%re .or. &
    z%x1(3)/=ca(3)%re .or. &
    z%x1(4)/=ca(4)%re .or. &
    z%x2(1)/=ca(1)%re .or. &
    z%x2(2)/=ca(2)%re .or. &
    z%x2(3)/=ca(3)%re .or. &
    z%x2(4)/=ca(4)%re) print *,101
end subroutine
end
use m1
type (x),target:: z
real,pointer::p(:)
z%x1(:)=ca(:)%re
z%x2(:)=ca(:)%re
if (z%x1(1)/=ca(1)%re .or. &
    z%x1(2)/=ca(2)%re .or. &
    z%x1(3)/=ca(3)%re .or. &
    z%x1(4)/=ca(4)%re .or. &
    z%x2(1)/=ca(1)%re .or. &
    z%x2(2)/=ca(2)%re .or. &
    z%x2(3)/=ca(3)%re .or. &
    z%x2(4)/=ca(4)%re) print *,101
call   s01(z,p)
print *,'pass'
end
