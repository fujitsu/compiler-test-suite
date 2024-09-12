module m1
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    integer f1(size(ibits(xxx,0,31)))
    do i=1,size(xxx)
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
