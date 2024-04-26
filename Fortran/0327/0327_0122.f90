integer :: x
call sub(x,x)
print *,'pass'
contains

subroutine sub(i,j)
integer :: x(5,5)
integer :: i,j
x=10
forall(i=2:4:1 , j=2:4:1)
   x(i,j)=2
end forall
 do i=1,5
 print *,x(i,1),x(i,2),x(i,3),x(i,4),x(i,5)
 end do
 end subroutine
 end
