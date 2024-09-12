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
type(t) :: c
end

pure subroutine sub(r)
use m2
intent(out)::r
r=c%p()
end

call set
call sub(r)
if (r/=1.) print *,2002
print *,'pass'
end
    pure function f()
    f=1
    end function 
subroutine set
use m1
use m2
c%p=>f
end subroutine
