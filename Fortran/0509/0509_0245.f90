module m234
procedure(f1),pointer::f
procedure(f2),pointer::ff
procedure(f3),pointer::fff
procedure(f1)::g1
procedure(f2)::g2
procedure(f3)::g3
contains
  function f1()
    character(len=:),pointer:: f1,f2,f3
entry f2()
entry f3()
    allocate(character(2)::f1)
    f1='12'
  end function
end
subroutine sub2()
use m234 
call sub(f1())
call sub(f2())
call sub(f3())
call sub(f())
call sub(ff())
call sub(fff())
call sub(g1())
call sub(g2())
call sub(g3())
end
use m234
f=>f1
ff=>f2
fff=>f3
call sub2()
print *,"pass"
end
subroutine sub(d)
character(*)::d
if (len(d)/=2) print *,701
if (d/='12') print *,702
end

  function g1()
    character(len=:),pointer:: g1,g2,g3
entry g2()
entry g3()
    allocate(character(2)::g1)
    g1='12'
  end function
