module m
type,private::x
  integer::x1
end type
  type(x)::v
  private::s
  interface g
    module procedure s
  end interface
contains
  subroutine s(d)
  type(x)::d
    d=x(1)
  end subroutine
end
use m
call g(v)
if (v%x1/=1)print *,101,v%x1
print *,'pass'
end

