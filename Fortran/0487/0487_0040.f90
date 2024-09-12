module m1
interface 
  module function f1(x)
    character(2),intent(in) :: x
    integer f1(verify(x,'a'))
  end 
end interface
end
submodule (m1) smod 
contains
  module procedure  f1
    do i=1,2
    f1(i)=i
    enddo
  end 
end

use m1 
character(2):: x
integer y(2)
x='a2'
y=f1(x)
if (y(1)/=1) print *,301
print *,"pass"
end
