module m1
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx
    integer f1(iachar(char(xxx)))
    do i=1,2
    f1(i)=i
    enddo
  end function
end

use m1 
integer,allocatable:: x
integer y(2)
allocate(x)
x=iachar(char(2))
y=f1(x)
if (y(1)/=1) print *,301
print *,"pass"
end
