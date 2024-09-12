module m1
contains
  function f1()
    character(len=:),pointer:: f1
    allocate(character(2)::f1)
    f1='12'
  end function
end
module m2
use m1
procedure(f1),pointer::f
contains
subroutine st()
call sub(f())
end subroutine
end
subroutine sub2()
use m2 
call sub(f())
end
use m2
f=>f1
call st
call sub2()
print *,"pass"
end
subroutine sub(d)
character(*)::d
if (len(d)/=2) print *,701
if (d/='12') print *,702
end
