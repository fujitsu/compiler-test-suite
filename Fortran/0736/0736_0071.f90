integer,allocatable,dimension(:)::x
do i=1,3
allocate(x(3:4));x=(/3,4/)
call sub(x,1)
if (any(x/=(/1,2/)))write(6,*) "NG"
if (ubound(x,dim=1)/=2)write(6,*) "NG"
call sub(j=2)
deallocate(x)
end do
 print *,'pass'
contains
 subroutine sub(x,j)
   integer,allocatable,optional,dimension(:),intent(out)::x
 if (present(x)) then
  if (j/=1)write(6,*) "NG"
  if (allocated(x))deallocate(x)
  allocate(x(2))
  x=(/1,2/)
 else 
  if (j/=2)write(6,*) "NG"
 endif
 end subroutine sub
 end
