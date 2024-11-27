   type x
    integer::x1
    integer,allocatable,dimension(:,:)::x2
    integer::x3
   end type
   type(x),allocatable,dimension(:)::xa
allocate(xa(2))
if (allocated(xa(1)%x2))write(6,*) "NG"
print *,'pass'
end
