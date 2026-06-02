module m
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
use m
v%p=>sub
call v%p
print *,'sngg731p : pass'
end
