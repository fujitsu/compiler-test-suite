module m2
procedure(f1),pointer::f
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    character(len=size(xxx)) f1
    f1='1'
  end function
end
subroutine sub2()
use m2 
integer:: x(2)
character(len=2) y
f=>f1
y=f(x)
end
call sub2()
print *,"pass"
end
