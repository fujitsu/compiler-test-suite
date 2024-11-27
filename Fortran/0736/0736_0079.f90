   type y
    integer::y1
    integer,allocatable,dimension(:)::y2
    integer::y3
    integer,allocatable,dimension(:)::y4
   end type
   type x
    integer::x1
    integer,allocatable,dimension(:,:)::x2
    integer::x3
    type(y),allocatable,dimension(:,:)::x4
    integer,allocatable,dimension(:,:)::x5
    integer::x6
    type(y),dimension(3,2)::x7
    integer::x8
   end type
   type(x),allocatable,dimension(:,:)::xb
do k=1,3
call sub(xb)
do i2=1,3
do i1=1,2
if (allocated(xb(i1,i2)%x2))write(6,*) "NG"
if (allocated(xb(i1,i2)%x4))write(6,*) "NG"
if (allocated(xb(i1,i2)%x5))write(6,*) "NG"
 do j2=1,2
 do j1=1,3
  if (allocated(xb(i1,i2)%x7(j1,j2)%y2))write(6,*) "NG"
  if (allocated(xb(i1,i2)%x7(j1,j2)%y4))write(6,*) "NG"
 end do
 end do
end do
end do
deallocate(xb)
end do
print *,'pass'
contains
subroutine sub(xb)
   type(x),allocatable,dimension(:,:)::xa
   type(x),allocatable,dimension(:,:)::xb
allocate(xa(2,3))
do i2=1,3
do i1=1,2
if (allocated(xa(i1,i2)%x2))write(6,*) "NG"
if (allocated(xa(i1,i2)%x4))write(6,*) "NG"
if (allocated(xa(i1,i2)%x5))write(6,*) "NG"
 do j2=1,2
 do j1=1,3
  if (allocated(xa(i1,i2)%x7(j1,j2)%y2))write(6,*) "NG"
  if (allocated(xa(i1,i2)%x7(j1,j2)%y4))write(6,*) "NG"
 end do
 end do
end do
end do
allocate(xb(2,3))
do i2=1,3
do i1=1,2
if (allocated(xb(i1,i2)%x2))write(6,*) "NG"
if (allocated(xb(i1,i2)%x4))write(6,*) "NG"
if (allocated(xb(i1,i2)%x5))write(6,*) "NG"
 do j2=1,2
 do j1=1,3
  if (allocated(xb(i1,i2)%x7(j1,j2)%y2))write(6,*) "NG"
  if (allocated(xb(i1,i2)%x7(j1,j2)%y4))write(6,*) "NG"
 end do
 end do
end do
end do
end subroutine 
end
