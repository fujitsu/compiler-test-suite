module m2
procedure(f1),pointer::f
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    character(len=size(xxx)) f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=char(i)
    enddo
  end function
end
subroutine sub2()
use m2 
integer,allocatable:: x(:)
character(len=2) y(2)
allocate(x(2))
f=>f1
y=f(x)
end
call sub2()
print *,"pass"
end
