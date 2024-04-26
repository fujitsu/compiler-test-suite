module m1
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx
    integer f1(ishftc(xxx,0))
    do i=1,1
    f1(i)=i
    enddo
  end function
end

use m1 
integer,allocatable:: x
integer y(1)
allocate(x)
x=1
y=f1(x)
if (y(1)/=1) print *,301
print *,"pass"
end
