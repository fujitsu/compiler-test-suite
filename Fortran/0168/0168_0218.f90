module m1
complex(8),parameter,dimension(*)::ca=[(1,2),(3,4),(5,6),(7,8)]
complex(8),parameter,dimension(*)::cr=[(11,2),(12,4),(13,6),(14,8)]
type x
  complex:: x1(4),x2(4)
end type
contains
subroutine s01(z,p)
real,pointer::p(:)
type (x),target:: z
if (z%x1(1)%re/=ca(1)%re .or. &
    z%x1(2)%re/=ca(2)%re .or. &
    z%x1(3)%re/=ca(3)%re .or. &
    z%x1(4)%re/=ca(4)%re .or. &
    z%x2(1)%re/=ca(1)%re .or. &
    z%x2(2)%re/=ca(2)%re .or. &
    z%x2(3)%re/=ca(3)%re .or. &
    z%x2(4)%re/=ca(4)%re .or.&
    z%x1(1)%im/=ca(1)%im .or. &
    z%x1(2)%im/=ca(2)%im .or. &
    z%x1(3)%im/=ca(3)%im .or. &
    z%x1(4)%im/=ca(4)%im .or. &
    z%x2(1)%im/=ca(1)%im .or. &
    z%x2(2)%im/=ca(2)%im .or. &
    z%x2(3)%im/=ca(3)%im) print *,301
if (.not.associated(p,z%x2%im)) print *,401
end subroutine
end
use m1
type (x),target:: z
real,pointer::p(:)
z%x1(:)%re=ca(:)%re
z%x2(:)%re=ca(:)%re
z%x1(:)%im=ca(:)%im
z%x2(:)%im=ca(:)%im
if (z%x1(1)%re/=ca(1)%re .or. &
    z%x1(2)%re/=ca(2)%re .or. &
    z%x1(3)%re/=ca(3)%re .or. &
    z%x1(4)%re/=ca(4)%re .or. &
    z%x2(1)%re/=ca(1)%re .or. &
    z%x2(2)%re/=ca(2)%re .or. &
    z%x2(3)%re/=ca(3)%re .or. &
    z%x2(4)%re/=ca(4)%re .or.&
    z%x1(1)%im/=ca(1)%im .or. &
    z%x1(2)%im/=ca(2)%im .or. &
    z%x1(3)%im/=ca(3)%im .or. &
    z%x1(4)%im/=ca(4)%im .or. &
    z%x2(1)%im/=ca(1)%im .or. &
    z%x2(2)%im/=ca(2)%im .or. &
    z%x2(3)%im/=ca(3)%im) print *,101
p=> z%x2%im
if (.not.associated(p,z%x2%im)) print *,201
call   s01(z,p)
print *,'pass'
end
