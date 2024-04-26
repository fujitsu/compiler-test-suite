module m1
contains
  function f1(x)
    integer,intent(in) :: x
    integer f1(selected_real_kind(x))
    f1=1
  end function
end

use m1 
integer:: x=5
integer y(4)
y=f1(x)
if (y(1)/=1) print *,301
print *,"pass"
end
