module m1
  interface
   module subroutine s
   end subroutine
   module function f()
   end function
  end interface
end
submodule (m1) smod
  procedure(f)::t
  procedure(f),pointer::p
  procedure(s)::w
  procedure(s),pointer::q
contains
  module procedure s
  end
  module procedure f
  f=1.
  end
end
use m1
call s
if (f()/=1.) print *,1001
print *,'sngg051p : pass'
end
   subroutine w
   end subroutine
   function t()
   t=2.
   end function
