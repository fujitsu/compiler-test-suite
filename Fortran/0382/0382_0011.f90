module m1
character(2),target::ta(2)=(/'12','34'/)
contains 
  function f()
    character(:),pointer::f(:)
    f=>ta
  end function
subroutine s1(p,e)
procedure(f),pointer,optional::p
external            ::e
optional::e
call s( p )
call t( p )
end subroutine
subroutine s(p)
procedure(f),pointer,optional::p
if (present(p))print *,'error-01'
end subroutine
subroutine t(e)
external            ::e
optional::e
if (present(e))print *,'error-02'
end subroutine
end
use m1
call s1()
print *,'pass'
end
