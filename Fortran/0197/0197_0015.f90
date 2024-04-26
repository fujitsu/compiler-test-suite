module m1
contains
  function f1(x)
    character(2),intent(in) :: x
    integer f1(len_trim(x))
    do i=1,2
    f1(i)=i
    enddo
  end function
end

use m1 
character(2),allocatable:: x
integer y(2)
allocate(x)
x='12'
y=f1(x)
if (y(1)/=1) print *,301
print *,"pass"
end
