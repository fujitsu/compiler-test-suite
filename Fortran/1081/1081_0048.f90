module m1
  interface
    pure function f(k) result(d)
    intent(in)::k
    integer::d(k)
    end function 
  end interface
end

module m2
use m1 
type t
    procedure(f), pointer,nopass :: p
end type
type(t)::v
contains
subroutine set
v%p=>f
end subroutine
end
module m3
use m2,only:t
end

subroutine sub(r)
use m3
use m2
intent(out)::r
    integer::r
integer::k(5)
k=[1,2,3,4,5]
call aa(v%p(5))
r=sum(k)
contains
subroutine aa(x)
integer::x(5)
if (any(x/=1)) print *,301
end subroutine
end

use m3
use m2
call set
call sub(k)
if (k/=15) print *,2002
print *,'sngg362m : pass'
end
    pure function f(k) result(d)
    intent(in)::k
    integer::d(k)
d=1
    end function 
