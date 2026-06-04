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
character(len=2) y
y=f1()
if (y/='12') print *,202
y=f2()
if (y/='12') print *,202
y=f2()
if (y/='12') print *,202
y=g1()
if (y/='12') print *,202
y=g2()
if (y/='12') print *,202
y=g2()
if (y/='12') print *,202
y=f()
if (y/='12') print *,202
y=ff()
if (y/='12') print *,202
y=fff()
if (y/='12') print *,202
end
use m234
f=>f1
ff=>f2
fff=>f3
call sub2()
print *,"pass"
end

  function g1()
    character(len=:),pointer:: g1,g2,g3
  entry g2()
  entry g3()
    allocate(character(2)::g1)
    g1='12'
  end
