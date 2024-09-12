module m1
interface
 recursive function ifun(yyy) result(res)
    integer:: yyy(:)
    integer res(size(yyy))
  end function
end interface
end
use m1

integer,allocatable:: x(:)
integer y(2),a(2)
allocate(x(2))
y=ifun(x)
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
