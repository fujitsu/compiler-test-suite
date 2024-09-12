module m2
procedure(f1),pointer::f
contains
  function f1()
    character(len=:),pointer:: f1
    allocate(character(2)::f1)
    f1='12'
  end function
end
subroutine sub2()
use m2 
character(len=2) y
y=f()
if (y/='12') print *,202
end
use m2
f=>f1
call sub2()
print *,"pass"
end
