use,intrinsic::iso_c_binding,only:c_ptr
type(c_ptr)::p
interface
  subroutine s10(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr)::p
  end subroutine
  subroutine s11()
  use,intrinsic::iso_c_binding,only:c_ptr
  end subroutine
  subroutine s12(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr)::p
  end subroutine
  subroutine s20(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr),value::p
  end subroutine
  subroutine s21()
  use,intrinsic::iso_c_binding,only:c_ptr
  end subroutine
  subroutine s22(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr),value::p
  end subroutine
end interface
call s10(p)
call s12(p)
call s20(p)
call s22(p)
print *,'pass'
end
subroutine s10(p)
use,intrinsic::iso_c_binding,only:c_ptr
type(c_ptr)::p
interface
  subroutine ss(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr),value::p
  end subroutine
end interface
entry      s11()
entry      s12(p)
call ss(p)
end
subroutine s20(p)
use,intrinsic::iso_c_binding,only:c_ptr
type(c_ptr),value::p
interface
  subroutine ss(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr),value::p
  end subroutine
end interface
entry      s21()
entry      s22(p)
call ss(p)
end
subroutine ss(p)
use,intrinsic::iso_c_binding,only:c_ptr
type(c_ptr),value::p
i=loc(p)
i=i+1
end subroutine
