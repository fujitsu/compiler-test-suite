module m234
procedure(f1),pointer::f
contains
  function f1()
    character(len=:),allocatable:: f1
    allocate(character(2)::f1)
    f1='12'
  end function
end
subroutine sub2()
use m234 
call sub(f1())
end
use m234
f=>f1
call sub2()
print *,"pass"
end
subroutine sub(d)
character(*)::d
if (len(d)/=2) print *,701
if (d/='12') print *,702
end
