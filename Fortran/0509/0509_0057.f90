module m2
procedure(f1),pointer::f
contains
  function f1(xxx)
    integer,intent(in) :: xxx
    character(len=xxx) f1
    f1='12'
  end function
end
subroutine sub2()
use m2 
integer:: x=2
character(len=2) y
f=>f1
y=f(x)
if (y/='12') print *,202
end
call sub2()
print *,"pass"
end