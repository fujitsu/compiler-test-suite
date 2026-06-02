module m234
procedure(f1),pointer::f
procedure(f2),pointer::ff
procedure(f3),pointer::fff
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
end
use m234
f=>f1
ff=>f2
fff=>f3
call sub2()
print *,"pass"
end
