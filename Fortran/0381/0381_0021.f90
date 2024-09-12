module m1
character(2),target::ta(2)=(/'12','34'/)
contains 
  function f()
    character(:),pointer::f(:)
    f=>ta
  end function
end
subroutine s1(p)
use m1
procedure(f),pointer::p
call s(null(p))
contains
subroutine s(p)
procedure(f),pointer,optional::p
if (.not.present(p))print *,'error-11'
if (associated(p))print *,'error-12'
end subroutine
end
use m1
interface
subroutine s1(p)
use m1
procedure(f),pointer::p
end subroutine
end interface
procedure(f),pointer::p
call s1(p)
print *,'pass'
end
