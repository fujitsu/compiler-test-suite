module m2
interface
  function f1(xxx)
    integer,intent(in) :: xxx
    character(len=xxx) f1
  end function
end interface
end
subroutine sub2()
use m2 
integer:: x=2
character(len=2) y
procedure(f1),pointer::f
f=>f1
y=f(x)
if (y/='12') print *,202
end
call sub2()
print *,"pass"
end

  function f1(xxx)
    integer,intent(in) :: xxx
    character(len=xxx) f1
    f1='12'
  end function