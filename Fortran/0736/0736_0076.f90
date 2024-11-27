   type x
    integer::x1
    integer,allocatable,dimension(:,:)::x2
    integer::x3
   end type
   type y
     integer ::y1
     integer,allocatable,dimension(:,:)::y2
     type(x),allocatable,dimension(:)::y3
     integer ::y4
   end type
   type(y),allocatable,dimension(:)::ya
   type(y)                         ::yv
   type(x),allocatable,dimension(:)::xa
allocate(xa(2))
allocate(ya(2))
allocate(yv%y3(2))
do i1=1,2
if (allocated(xa(i1)%x2))write(6,*) "NG"
end do
do i1=1,2
if (allocated(ya(i1)%y2))write(6,*) "NG"
if (allocated(ya(i1)%y3))write(6,*) "NG"
end do
do i1=1,2
if (allocated(yv%y3(i1)%x2))write(6,*) "NG"
end do
print *,'pass'
end
