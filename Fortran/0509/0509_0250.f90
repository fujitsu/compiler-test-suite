module m2
interface
  function f1()
    character(len=:),pointer:: f1
  end function
  function f2()
    character(len=:),pointer:: f2
  end function
  function f3()
    character(len=:),pointer:: f3
  end function
end interface
procedure(f1),pointer::f
procedure(f2),pointer::ff
procedure(f3),pointer::fff
procedure(f1)::g1
procedure(f2)::g2
procedure(f3)::g3
contains
subroutine st()
call sub(f())
call sub(ff())
call sub(fff())
call sub(f1())
call sub(f2())
call sub(f3())
call sub(g1())
call sub(g2())
call sub(g3())
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
call sub(g1())
call sub(g2())
call sub(g3())
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
entry f2()
entry f3()
    character(len=:),pointer:: f1,f2,f3
    allocate(character(2)::f1)
    f1='12'
  end function
  function g1()
entry g2()
entry g3()
    character(len=:),pointer:: g1,g2,g3
    allocate(character(2)::g1)
    g1='12'
  end 
