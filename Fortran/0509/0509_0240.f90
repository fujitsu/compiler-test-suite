module m1
interface
  function f1()
    character(len=:),allocatable:: f1
  end function
  function f2()
    character(len=:),allocatable:: f2
  end function
  function f3()
    character(len=:),allocatable:: f3
  end function
end interface
end
module m2
use m1
procedure(f1),pointer::f
procedure(f2),pointer::ff
procedure(f3),pointer::fff
contains
subroutine st()
call sub(f())
call sub(ff())
call sub(fff())
call sub(f1())
call sub(f2())
call sub(f3())
end subroutine
end
subroutine sub2()
use m2 
call sub(f())
call sub(ff())
call sub(fff())
call sub(f1())
call sub(f2())
call sub(f3())
end
use m2
f=>f1
ff=>f2
fff=>f3
call st
call sub2()
print *,"pass"
end
subroutine sub(d)
character(*)::d
if (len(d)/=2) print *,701
if (d/='12') print *,702
end

  function f1()
    character(len=:),allocatable:: f1,f2,f3
entry f2()
entry f3()
    allocate(character(2)::f1)
    f1='12'
  end function
