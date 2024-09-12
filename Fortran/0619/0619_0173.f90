module m1
  type x
    integer :: x1=1
  end type
contains
recursive function f() result(r)
entry    e() result(r)
type(x)::r
end function
subroutine sub(d)
type(x)::d
if (d%x1/=1)print *,101
end subroutine
end
use m1
call sub(f())
call sub(e())
print *,'pass'
end


