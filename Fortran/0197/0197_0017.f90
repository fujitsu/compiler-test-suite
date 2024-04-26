module m1
contains
  function f1(x)
    character(2),intent(in) :: x
    integer f1(scan(x,'a'))
    do i=1,1
    f1(i)=i
    enddo
  end function
end

use m1 
character(2):: x
integer y(1)
x='a2'
y=f1(x)
if (y(1)/=1) print *,301
print *,"pass"
end
