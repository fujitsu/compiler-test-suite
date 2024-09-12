module m1
interface
  module function f1(x)
    integer,intent(in) :: x(3)
    integer f1(iall(x))
  end function
end interface
end
  submodule (m1) smod
contains
  module function f1(x)
    integer,intent(in) :: x(3)
    integer f1(iall(x))
    f1=1
  end 
end

use m1 
integer:: x(3)=[3,7,11]
integer y(3)
y=f1(x)
if (y(1)/=1) print *,301
if (y(2)/=1) print *,303
if (y(3)/=1) print *,304
print *,"pass"
end
