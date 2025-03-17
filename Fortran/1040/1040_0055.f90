module m1
contains
  function f1(xxx) result(r)
  entry    f2(xxx) result(r)
    integer,intent(in) :: xxx(:)
    integer r(size(xxx))
    do i=1,size(xxx)
    r(i)=i
    enddo
  end function
  subroutine sub
integer,allocatable:: x(:)
integer y(2)
allocate(x(2))
y=f1(x)
if (any(y/=(/1,2/)))print *,'error'
y=f2(x)
if (any(y/=(/1,2/)))print *,'error-2'
  end subroutine
end
use m1
call sub
print *,'pass'
end
