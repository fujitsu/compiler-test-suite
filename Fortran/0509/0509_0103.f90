module m2
procedure(f1)::f
contains
  function f1()
    character(len=:),pointer:: f1
    allocate(character(2)::f1)
    f1='12'
  end function
subroutine st()
call sub(f())
call sub(f1())
end subroutine
end
subroutine sub2()
use m2 
call sub(f())
end
use m2
call st
call sub2()
print *,"pass"
end
subroutine sub(d)
character(*)::d
if (len(d)/=2) print *,701
if (d/='12') print *,702
end

  function f()
    character(len=:),pointer:: f
    allocate(character(2)::f)
    f='12'
  end function
