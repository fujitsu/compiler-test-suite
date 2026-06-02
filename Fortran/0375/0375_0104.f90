interface
  subroutine s1(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr)::p(:)
  end subroutine
  function f()
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr)::f(3)
  end function
  function e()
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr)::e(3)
  end function
  function d()
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr)::d(3)
  end function
end interface
call s1(f())
call s1(e())
call s1(d())
print *,'pass'
end
function   f()
use,intrinsic::iso_c_binding,only:c_ptr,c_null_ptr
entry      e()
entry      d()
interface
  subroutine s1(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr)::p(:)
  end subroutine
end interface
type(c_ptr),dimension(3)::f,e,d
f=C_NULL_PTR
call s1(f)
call set(loc(f))
end function
subroutine s1(p)
use,intrinsic::iso_c_binding,only:c_ptr
type(c_ptr)::p(:)
interface
  subroutine ss(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr),value::p
  end subroutine
end interface
call chk(p(1))
call ss(p(1))
call ss(p(2))
call ss(p(3))
end
subroutine ss(p)
use,intrinsic::iso_c_binding,only:c_ptr
type(c_ptr),value::p
i=loc(p)
i=i+1
end subroutine
subroutine set(ir)
pointer(ir,p)
integer(8) p
p=100
end
subroutine chk(s)
type cptr
  sequence
  integer(8)::ptr
end type
type(cptr)::s
common /cmn/ i
pointer(ir,p)
integer(8) p,i
ir=loc(s)
if (p/=s%ptr)print *,'fail'
end
