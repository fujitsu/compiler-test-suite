module m1
 type x
   integer::x1
   contains
    procedure::prc=> s1
 end type
contains
 subroutine s1(v)
  class(x):: v
  v%x1=1
 end subroutine
end
subroutine s
use m1
type (x):: vv
call vv%prc()
if (vv%x1/=1) print *,101
end
call s
print *,'pass'
end
