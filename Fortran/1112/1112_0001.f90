module m1
  interface
   module subroutine s(z)
   pointer::z
   end subroutine
   module function f(z)
   pointer::z
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
    if (z/=1) print *,1001
    q=>w
    call q(z)
  end
  module procedure f
    if (z/=1) print *,1002
  f=1.
     p=>t
     if (p(z)/=2.)print *,2003
  end
end
use m1
    pointer::z
allocate(z,source=1.)
call s(z)
if (f(z)/=1.) print *,1001
print *,'sngg052p : pass'
end
   subroutine w(z)
    pointer::z
    if (z/=1) print *,1003
   end subroutine
   function t(z)
    pointer::z
   t=2.
    if (z/=1) print *,1004
   end function
