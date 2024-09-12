module m1
  interface
    pure function f() result(d)
    integer::d(5)
    end function 
  end interface
end

module m2
use m1 
    procedure(f), pointer :: p
contains
subroutine set
p=>f
end subroutine
end

subroutine sub(r)
use m2
intent(out)::r
    integer::r
integer::k(5)
k=[1,2,3,4,5]
if (any(p()/=k)) print *,202
r=sum(k)
end

use m2
call set
call sub(k)
if (k/=15) print *,2002
print *,'pass'
end
    pure function f() result(d)
    integer::d(5)
d=[1,2,3,4,5]
    end function 
