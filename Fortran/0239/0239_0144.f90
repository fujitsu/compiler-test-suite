module m1
  type x
    integer::x1=1
    integer::x2=2
  end type
end
module m2
use m1
contains
subroutine s1
type(x):: v1
if (v1%x1/=1) print *,1
if (v1%x2/=2) print *,2
end subroutine
subroutine s2
type(x):: v2
if (v2%x1/=1) print *,11
if (v2%x2/=2) print *,12
end subroutine
end
use m2
call s1
call s2
print *,'pass'
end
