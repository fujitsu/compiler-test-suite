module m234
procedure(f1)::f
contains
  function f1()
    character(len=:),allocatable:: f1
    allocate(character(2)::f1)
    f1='12'
  end function
end
subroutine sub2()
use m234 
character(len=2) y
y=f1()
if (y/='12') print *,202
y=f()
if (y/='12') print *,202
end
use m234
call sub2()
print *,"pass"
end
  function f()
    character(len=:),allocatable:: f
    allocate(character(2)::f)
    f='12'
  end function
