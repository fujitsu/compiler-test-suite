module m1
  type x(k)
    integer,kind:: k
    integer(k)::a=k
  end type
contains
type(x(4)) function f()
end function
subroutine sub(y)
type(x(4)) :: y
if (y%k/=4) print *,101
if (y%a/=4) print *,102
end subroutine
end

use m1
call sub(f())
print *,'pass'
end
