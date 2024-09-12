module m2
procedure(f1),pointer::f
contains
  function f1(xxx)
    integer,intent(in) :: xxx
    character(len=xxx) f1
    f1='12'
  end function
subroutine sub2()
character(len=2) y
y=f(2)
if (y/='12') print *,202
end
end
use m2
f=>f1
call sub2()
print *,"pass"
end
