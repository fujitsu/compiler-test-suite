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
contains
subroutine sub2()
integer:: x=2
character(len=2) y
y=f(x)
if (y/='12') print *,202
y=f1(x)
if (y/='12') print *,202
end
end
subroutine sub3()
use m2
integer:: x=2
character(len=2) y
y=f(x)
if (y/='12') print *,202
y=f1(x)
if (y/='12') print *,202
end
use m2
call sub2()
call sub3()
print *,"pass"
end

  function f(xxx)
    integer,intent(in) :: xxx
    character(len=xxx) f
    f='12'
  end function
