module m2
procedure(f1)::f,ff,fff
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
y=f(2)
if (y/='12') print *,202
y=ff(2)
if (y/='12') print *,203
y=fff(2)
if (y/='12') print *,204
y=f1(2)
if (y/='12') print *,205
end
use m2
call sub2()
print *,"pass"
end

  function f(xxx) result(f1)
    integer,intent(in) :: xxx
    character(len=xxx) f1
    f1='12'
  end function
  function fff(xxx) result(f1)
    integer,intent(in) :: xxx
    character(len=xxx) f1
    f1='12'
  end function
  function ff(xxx) result(f1)
    integer,intent(in) :: xxx
    character(len=xxx) f1
    f1='12'
  end function