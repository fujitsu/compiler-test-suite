module m1
interface aaa
 module procedure f1
end interface
contains
  function f1(xxx)
    integer,intent(in) :: xxx(:)
    integer f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=i
    enddo
  end function
end
use m1
integer,allocatable:: x(:)
integer y(2)
allocate(x(2))
y=aaa(x)
if (any(y/=(/1,2/)))print *,'error'
print *,'pass'
end
