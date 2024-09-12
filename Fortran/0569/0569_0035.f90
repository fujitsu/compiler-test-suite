integer :: a(3), b(3)
a=[1,2,3]        
b = [4,5,6]
call sub(a,b)
if(any(b /= [1,2,3]))print*,101
print*,"PASS"
contains
pure subroutine sub(x,y)
integer,intent(in) :: x(3)
integer,intent(out) :: y(3)
y=x
end subroutine
end
