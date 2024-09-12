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
end
pure subroutine sub()
use m2
type (t) :: v
v%p=>f
r=v%p()

end

print *,'pass'
end
    pure function f()
    f=1
    end function
