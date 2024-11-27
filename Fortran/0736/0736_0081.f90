   type y
    integer::y1
    integer,allocatable,dimension(:,:)::y2
    integer::y3
   end type
   type x
    integer::x1
    type(y),allocatable,dimension(:)::x2
    integer::x3
   end type
   type(x),dimension(2)::xa
allocate(xa(2)%x2(3))
if (allocated(xa(2)%x2(1)%y2))write(6,*) "NG"
if (allocated(xa(2)%x2(2)%y2))write(6,*) "NG"
if (allocated(xa(2)%x2(3)%y2))write(6,*) "NG"
print *,'pass'
end
