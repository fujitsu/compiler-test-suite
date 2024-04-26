module m1
contains
  function f1(x)
    integer,intent(in) :: x
    integer f1(modulo(x,4))
    f1(1)=1
  end function
end

use m1 
integer  :: x
integer y(1)
x=-23
y=f1(x)
if (y(1)/=1) print *,301
print *,"pass"
end
