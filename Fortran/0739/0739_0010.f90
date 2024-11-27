   type y
    integer,allocatable,dimension(:)::y2
   end type
   type x
    integer::x1
    type(y),dimension(3,2)::x7
   end type
   type(x),allocatable,dimension(:,:)::xb
call sub(xb)
deallocate(xb)
print *,'pass'
contains
subroutine sub(xb)
   type(x),allocatable,dimension(:,:)::xa
   type(x),allocatable,dimension(:,:)::xb
 allocate(xa(2,1))
xa(1,1)%x1=10
allocate(xb(2,1))
xb(1,1)%x1=10
end subroutine 
end
