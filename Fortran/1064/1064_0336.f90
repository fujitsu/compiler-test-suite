module m1
  type,private:: x
    integer:: x1
  end type
contains
integer function f(d)
  type(x):: d
  f=d%x1
end function
function xf() result(r)
  type(x):: r
  r%x1=1
end function
end
subroutine s1
use m1
if (f(xf())/=1) print *,101
end
call s1
print *,'pass'
end
