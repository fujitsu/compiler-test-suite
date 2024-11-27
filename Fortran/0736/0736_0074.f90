type yy
integer :: x0
integer,allocatable,dimension(:)::x
integer :: x2
end type
type (yy):: var1(5,5),var2(5,5),var3(5,5)
do i=1,3
do iy=2,5,2
do ix=1,5,2
allocate(var1(ix,iy)%x(3:4))
allocate(var2(ix,iy)%x(3:4))
allocate(var3(ix,iy)%x(3:4))
var1(ix,iy)%x=(/3,4/)
var2(ix,iy)%x=(/3,4/)
var3(ix,iy)%x=(/3,4/)
end do
end do
call sub(var1(2:5:2,1:5:2), var2(2:5:2,1:5:2),var3(2:5:2,1:5:2),1)
do iy=1,5,2
do ix=2,5,2
if (any(var1(ix,iy)%x/=(/1,2/)))write(6,*) "NG"
if (any(var2(ix,iy)%x/=(/1,2/)))write(6,*) "NG"
if (any(var3(ix,iy)%x/=(/1,2/)))write(6,*) "NG"
if (ubound(var1(ix,iy)%x,dim=1)/=2)write(6,*) "NG"
if (ubound(var2(ix,iy)%x,dim=1)/=2)write(6,*) "NG"
if (ubound(var3(ix,iy)%x,dim=1)/=2)write(6,*) "NG"
deallocate(var1(ix,iy)%x)
deallocate(var2(ix,iy)%x)
deallocate(var3(ix,iy)%x)
end do
end do
do iy=2,5,2
do ix=1,5,2
if (any(var1(ix,iy)%x/=(/3,4/)))write(6,*) "NG"
if (any(var2(ix,iy)%x/=(/3,4/)))write(6,*) "NG"
if (any(var3(ix,iy)%x/=(/3,4/)))write(6,*) "NG"
if (ubound(var1(ix,iy)%x,dim=1)/=4)write(6,*) "NG"
if (ubound(var2(ix,iy)%x,dim=1)/=4)write(6,*) "NG"
if (ubound(var3(ix,iy)%x,dim=1)/=4)write(6,*) "NG"
deallocate(var1(ix,iy)%x)
deallocate(var2(ix,iy)%x)
deallocate(var3(ix,iy)%x)
end do
end do
call sub(j=2)
end do
 print *,'pass'
contains
 subroutine sub(x,y,z,j)
   type(yy),optional,intent(out),dimension(:,:)::x,y,z
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
 if (present(y)) then
  if (j/=1)write(6,*) "NG"
  do iy=1,size(y,dim=2)
  do ix=1,size(y,dim=1)
  if (allocated(y(ix,iy)%x))write(6,*) "NG"
  allocate(y(ix,iy)%x(2))
  y(ix,iy)%x=(/1,2/)
  end do
  end do
 else 
  if (j/=2)write(6,*) "NG"
 endif
 if (present(z)) then
  if (j/=1)write(6,*) "NG"
  do iy=1,size(x,dim=2)
  do ix=1,size(x,dim=1)
  if (allocated(z(ix,iy)%x))write(6,*) "NG"
  allocate(z(ix,iy)%x(2))
  z(ix,iy)%x=(/1,2/)
  end do
  end do
 else 
  if (j/=2)write(6,*) "NG"
 endif
 end subroutine sub
 end
