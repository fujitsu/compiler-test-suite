module m1
interface
 recursive function ifun(yyy) result(res)
    integer:: yyy(:)
    integer res(size(yyy))
  end function
end interface
end
subroutine s1
use m1
type xx
procedure(ifun),nopass,pointer::p
end type
type(xx)::v
integer,allocatable:: x(:)
integer y(2),a(2)
allocate(x(2))
v%p=>ifun
y=v%p   (x)
if(any(y/=[5,6]))print *,801
end
call s1
print *,"pass"
end

 function ifun(yyy) result(res)
integer:: yyy(:)
integer res(size(yyy))
integer,allocatable:: x(:)
integer y(2),a(2)
      do i=1,size(yyy)
      res(i)=i+4
      enddo
allocate(x(2))
end
