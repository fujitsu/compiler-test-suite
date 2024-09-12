module m1
  interface
    pure function f()
    end function
  end interface
end
module m2
use m1
  type :: t
    procedure(f), pointer, nopass :: p
  end type t
type (t) :: v
contains
subroutine set
v%p=>f
end
end
pure subroutine sub()
use m2
r=v%p()

end

use m2
call set
call sub
print *,'pass'
end
    pure function f()
    f=1
    end function
