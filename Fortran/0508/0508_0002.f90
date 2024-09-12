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
  end type
end

pure subroutine sub()
use m2,only:t,f
type(t),pointer :: c
i=c%p()
end

print *,'pass'
end
