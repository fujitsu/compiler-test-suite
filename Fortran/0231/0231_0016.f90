module m0
interface
 function x2(i) result(p)
      character(i),pointer::p
  end function
end interface
end
module mod
use m0
type x
   procedure (y),nopass,pointer :: p
end type
type(x)::v
type xx
   procedure (x2),nopass,pointer :: p
end type
 contains
 function y() result(p)
type(xx)::p
   p%p=>x2
 end function
subroutine s(p)
type(xx)::p
type yx
   procedure (x2),pointer,nopass :: p
end type
type(yx)::px
if (p%p(2)/='12')print *,3
px%p=>x2
if (px%p(2)/='12') print *,3001
end subroutine
subroutine t(p)
type xx
   procedure (x2),nopass,pointer :: p
end type
type(xx)::p
end subroutine
end
subroutine s1
use mod
v%p=>y
call s(v%p())
end 
call s1
print *,'pass'
end
 function x2(i) result(p)
      character(i),pointer::p
      allocate(p)
      p='12'
  end function
