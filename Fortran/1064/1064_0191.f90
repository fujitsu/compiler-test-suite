module m1
type ,bind(c)::x
  integer::x
end type
contains
subroutine sub(k) bind(c)
type(x),value::k
if (k%x/=1) print *,200
k%x=2
if (k%x/=2) print *,201
end subroutine
end

use m1
type(x)::k=x(1)
call sub(k)
if (k%x/=1) print *,101
print *,'pass'
end
