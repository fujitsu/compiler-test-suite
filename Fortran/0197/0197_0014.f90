module m1
contains
  function f1(xxx)
    integer,intent(in) :: xxx(2:3)
    integer f1(lbound(xxx,dim=1))
    do i=1,2
    f1(i)=i
    enddo
  end function
end

use m1 
integer,allocatable:: x(:)
integer y(2)
allocate(x(2))
y=f1(x)
if (y(1)/=1) print *,301
print *,"pass"
end
