integer :: a(10)
a=2
call sub(a(1:5),a(1:10))
       print *,'pass'
contains

subroutine sub(x,y)
integer :: x(*),y(*)
x(2)=1
x(1)=1
end subroutine
end
