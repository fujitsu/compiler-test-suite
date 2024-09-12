module m1
type st
  integer::y
end type
contains
subroutine s1
type(st)::w1=st(1),w2=st(2)
call c1( [ st:: w1 , w2 ])
contains
subroutine c1(z)
type(st)::z(:)
if (any(shape(z)/=2))print *,102
if (z(1)%y/=1)print *,1031
if (z(2)%y/=2)print *,1032
end subroutine
end subroutine
end
use m1
call s1
print *,'pass'
end
