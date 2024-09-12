module m1
 interface
  module function f1(xxx)
    integer,intent(in) :: xxx(2)
    integer f1(ubound(xxx,dim=1))
  end
 end interface
end
submodule (m1) smod
contains
  module procedure f1
    do i=1,2
    f1(i)=i
    enddo
  end 
end

use m1 
integer,allocatable:: x(:)
integer y(2)
allocate(x(2))
y=f1(x)
if (y(1)/=1) print *,301
print *,"pass"
end
