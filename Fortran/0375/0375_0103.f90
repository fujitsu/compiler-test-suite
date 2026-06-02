interface
  subroutine s1(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr)::p
  end subroutine
  subroutine s2(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr),value::p
  end subroutine
  function f()
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr)::f
  end function
  function e()
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr)::e
  end function
  function d()
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr)::d
  end function
end interface
call s1(f())
call s2(f())
call s1(e())
call s2(e())
call s1(d())
call s2(d())
print *,'pass'
end
function   f()
use,intrinsic::iso_c_binding,only:c_ptr
entry      e()
entry      d()
interface
  subroutine s1(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr)::p
  end subroutine
end interface
type(c_ptr)::f,e,d
call s1(f)
call set(loc(f))
end function
subroutine s1(p)
use,intrinsic::iso_c_binding,only:c_ptr
type(c_ptr)::p
interface
  subroutine ss(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr),value::p
  end subroutine
end interface
call ss(p)
end
subroutine s2(p)
use,intrinsic::iso_c_binding,only:c_ptr
type(c_ptr),value::p
interface
  subroutine ss(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr),value::p
  end subroutine
end interface
call ss(p)
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
if (p/=loc(i))print *,'fail'
end
