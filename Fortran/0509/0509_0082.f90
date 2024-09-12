module m1
contains
  function f1(xxx)
    integer,intent(in) :: xxx
    character(len=xxx) f1
    f1='12'
  end function
end
module m2
use m1
procedure(f1),pointer::f
end
use m2
f=>f1
if (f(2)/='12') print *,202
print *,"pass"
end
