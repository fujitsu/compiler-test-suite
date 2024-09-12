module m2
procedure(f1),pointer::f
procedure(f1)::ff
contains
  function f1()
    character(len=:),allocatable:: f1
    allocate(character(2)::f1)
    f1='12'
  end function
end
subroutine sub2()
use m2 
call sub(f())
call sub(ff())
call sub(f1())
end
use m2
f=>f1
call sub2()
print *,"pass"
end
subroutine sub(d)
character(*)::d
if (len(d)/=2) print *,701
if (d/='12') print *,702
end

  function ff()
    character(len=:),allocatable:: ff
    allocate(character(2)::ff)
    ff='12'
  end function
