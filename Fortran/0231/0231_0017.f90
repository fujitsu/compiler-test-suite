module mod
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
   procedure (x2),pointer :: pp
if (p%p(2)/='12')print *,3
pp=>x2
if (pp(2)/='12')print *,31
end subroutine
subroutine t(p)
type xx
   procedure (x2),nopass,pointer :: p
end type
type(xx)::p
end subroutine
 function x2(i) result(p)
      character(i),pointer::p
      allocate(p)
      p='12'
  end function
end
subroutine s1
use mod
v%p=>y
call s(v%p())
end 
call s1
print *,'pass'
end
