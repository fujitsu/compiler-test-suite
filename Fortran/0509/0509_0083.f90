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
procedure(f1)::f
end
use m2
if (f(2)/='12') print *,202
print *,"pass"
end
  function f(xxx)
    integer,intent(in) :: xxx
    character(len=xxx) f
    f='12'
  end function
