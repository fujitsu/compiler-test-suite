module t
type c_ptr
 integer(8)::ptr
end type
end
subroutine s1(p)
use t
type(c_ptr)::p(:)
interface
  subroutine ss(p)
  use t
  type(c_ptr),value::p
  end subroutine
end interface
call ss(p(1))
end
subroutine ss(p)
use t
type(c_ptr),value::p
i=loc(p)
i=i+1
end subroutine
use t
interface
  subroutine s1(p)
  use t
  type(c_ptr)::p(:)
  end subroutine
end interface
type(c_ptr)::p(3)
call s1(p)
print *,'pass'
end
