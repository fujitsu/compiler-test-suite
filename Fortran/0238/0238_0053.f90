module m1
  type x
    integer::x1
    integer::x2
  end type
contains
subroutine foo(v)
type(x)::v
if (v%x1/=1)print *,101
if (v%x2/=2)print *,102
v%x1=3
end subroutine
end
subroutine s1
use m1
type(x)::v
v%x1=1
v%x2=2
call foo(v)
end
call s1
print *,'pass'
end
