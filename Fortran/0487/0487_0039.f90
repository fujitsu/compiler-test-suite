module m1
contains
  function f1(x)
    integer,intent(in) :: x
    integer f1(sign(x,1))
    f1(1)=1
  end function
end

use m1 
integer:: x=1
integer y(1)
y=f1(x)
if (y(1)/=1) print *,301
print *,"pass"
end
