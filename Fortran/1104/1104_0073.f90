module m1
type x
  integer::x1
  procedure(sub),pointer,pass::p
end type
type(x)::v=x(1,NULL())
contains
 subroutine sub(d)
class(x)::d
if (d%x1/=1) print *,101
 end
end
use m1
v%p=>sub
call v%p
print *,'sngg732p : pass'
end
