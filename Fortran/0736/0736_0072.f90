type yy
integer :: x0
integer,allocatable,dimension(:)::x
integer :: x2
end type
type (yy):: var
do i=1,3
allocate(var%x(3:4));var%x=(/3,4/)
call sub(var,1)
if (any(var%x/=(/1,2/)))write(6,*) "NG"
if (ubound(var%x,dim=1)/=2)write(6,*) "NG"
call sub(j=2)
deallocate(var%x)
end do
 print *,'pass'
contains
 subroutine sub(x,j)
   type(yy),optional,intent(out)::x
 if (present(x)) then
  if (j/=1)write(6,*) "NG"
  if (allocated(x%x))write(6,*) "NG"
  allocate(x%x(2))
  x%x=(/1,2/)
 else 
  if (j/=2)write(6,*) "NG"
 endif
 end subroutine sub
 end
