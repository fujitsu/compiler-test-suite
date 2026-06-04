module m2
procedure(f1)::f
procedure(f2)::ff
procedure(f3)::fff
contains
  function f1()
  entry    f2()
  entry    f3()
    character(len=:),pointer:: f1,f2,f3
    allocate(character(2)::f1)
    f1='12'
  end function
end
subroutine sub2()
use m2 
character(len=2) y
y=f()
if (y/='12') print *,202
y=ff()
if (y/='12') print *,202
y=fff()
if (y/='12') print *,202
y=f1()
if (y/='12') print *,202
y=f2()
if (y/='12') print *,202
y=f3()
if (y/='12') print *,202
end
use m2
call sub2()
print *,"pass"
end

  function f()
  entry    ff()
  entry    fff()
    character(len=:),pointer:: f,fff,ff
    allocate(character(2)::f)
    f='12'
  end function
