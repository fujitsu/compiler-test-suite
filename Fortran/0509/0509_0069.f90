module m2
type x
procedure(f1),nopass,pointer::f
end type
type(x)::v
contains
  function f1(xxx)
    integer,intent(in) :: xxx
    character(len=xxx) f1
    f1='12'
  end function
end
subroutine sub2()
use m2 
character(len=2) y
y=v%f(2)
if (y/='12') print *,202
end
use m2
v%f=>f1
call sub2()
print *,"pass"
end
