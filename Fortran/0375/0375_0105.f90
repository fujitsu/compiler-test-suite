subroutine s1(p)
use,intrinsic::iso_c_binding,only:c_ptr
type(c_ptr)::p(:)
interface
  subroutine ss(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr),value::p
  end subroutine
end interface
call ss(p(1))
end
subroutine ss(p)
use,intrinsic::iso_c_binding,only:c_ptr
type(c_ptr),value::p
i=loc(p)
i=i+1
end subroutine
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
use,intrinsic::iso_c_binding,only:c_ptr
entry      e()
entry      d()
interface
  subroutine s1(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr)::p(:)
  end subroutine
end interface
type(c_ptr),dimension(3)::f,e,d
call s1(f)
end function
