module m1
interface
  module function f1(x)
    integer,intent(in) :: x
    integer f1(selected_real_kind(x))
  end function
end interface
end
  submodule (m1) smod
contains
  module function f1(x)
    integer,intent(in) :: x
    integer f1(selected_real_kind(x))
    f1=1
  end 
end

use m1 
integer:: x=5
integer y(4)
y=f1(x)
if (y(1)/=1) print *,301
print *,"pass"
end
