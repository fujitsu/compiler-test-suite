module m2
procedure(f1),pointer::f
procedure(f2),pointer::ff
procedure(f3),pointer::fff
contains
  function f1()
  entry    f2()
  entry    f3()
    character(len=:),allocatable:: f1,f2,f3
allocate(f3,source='12')
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
end
use m2
f=>f1
ff=>f1
fff=>f1
call sub2()
print *,"pass"
end
