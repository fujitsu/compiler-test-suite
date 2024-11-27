type yy
integer :: x0
integer,allocatable,dimension(:)::x
integer :: x2
end type
type (yy):: var(5,5)
do i=1,3
do iy=2,5,2
do ix=1,5,2
allocate(var(ix,iy)%x(3:4))
var(ix,iy)%x=(/3,4/)
end do
end do
call sub(var(2:5:2,1:5:2),1)
do iy=1,5,2
do ix=2,5,2
if (any(var(ix,iy)%x/=(/1,2/)))write(6,*) "NG"
if (ubound(var(ix,iy)%x,dim=1)/=2)write(6,*) "NG"
deallocate(var(ix,iy)%x)
end do
end do
do iy=2,5,2
do ix=1,5,2
if (any(var(ix,iy)%x/=(/3,4/)))write(6,*) "NG"
if (ubound(var(ix,iy)%x,dim=1)/=4)write(6,*) "NG"
deallocate(var(ix,iy)%x)
end do
end do
call sub(j=2)
end do
 print *,'pass'
contains
 subroutine sub(x,j)
   type(yy),optional,intent(out)::x(:,:)
 if (present(x)) then
  if (j/=1)write(6,*) "NG"
  do iy=1,size(x,dim=2)
  do ix=1,size(x,dim=1)
  if (allocated(x(ix,iy)%x))write(6,*) "NG"
  allocate(x(ix,iy)%x(2))
  x(ix,iy)%x=(/1,2/)
  end do
  end do
 else 
  if (j/=2)write(6,*) "NG"
 endif
 end subroutine sub
 end
