module m2
procedure(f1)::f
contains
  function f1()
    character(len=:),allocatable:: f1
    allocate(character(2)::f1)
    f1='12'
  end function
end
subroutine sub2()
use m2 
character(len=2) y
y=f()
if (y/='12') print *,202
y=f1()
if (y/='12') print *,202
end
use m2
call sub2()
print *,"pass"
end

  function f()
    character(len=:),allocatable:: f
    allocate(character(2)::f)
    f='12'
  end function
