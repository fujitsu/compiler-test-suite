module c_binding
type c_ptr
 integer(8):: p
end type
end 
use c_binding,only:c_ptr
type(c_ptr)::p
interface
  subroutine s1(p)
  use c_binding,only:c_ptr
  type(c_ptr)::p
  end subroutine
  subroutine s2(p)
  use c_binding,only:c_ptr
  type(c_ptr),value::p
  end subroutine
  subroutine t1(p)
  integer(8)::p
  end subroutine
  subroutine t2(p)
  integer(8),value::p
  end subroutine
end interface
call s1(p)
call s2(p)
call t1(p%p)
call t2(p%p)
print *,'pass'
end
subroutine s1(p)
use c_binding,only:c_ptr
type(c_ptr)::p
interface
  subroutine ss(p)
  use c_binding,only:c_ptr
  type(c_ptr),value::p
  end subroutine
end interface
call ss(p)
end
subroutine s2(p)
use c_binding,only:c_ptr
type(c_ptr),value::p
interface
  subroutine ss(p)
  use c_binding,only:c_ptr
  type(c_ptr),value::p
  end subroutine
end interface
call ss(p)
end
subroutine ss(p)
use c_binding,only:c_ptr
type(c_ptr),value::p
i=loc(p)
i=i+1
end subroutine
subroutine t1(p)
use iso_c_binding,only:c_ptr,c_loc
integer(8)::p
interface
subroutine ss(p)
use c_binding,only:c_ptr
type(c_ptr),value::p
end subroutine
end interface
type(c_ptr)::pp
end
subroutine t2(p)
integer(8),value::p
interface
  subroutine tt(p)
  integer(8),value::p
  end subroutine
end interface
call tt(p)
end
subroutine tt(p)
integer(8),value::p
i=loc(p)
i=i+1
end subroutine
