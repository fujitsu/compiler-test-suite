module m1
  type x
    integer::x1=1
  end type
contains
  subroutine s1
  type x
    integer::x1=2
  end type
type(x):: y
if (y%x1/=2) print *,101
end subroutine
end
use m1
type(x):: y
call s1
if (y%x1/=1) print *,102
print *,'pass'
end
