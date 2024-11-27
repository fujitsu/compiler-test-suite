   type y
    integer::y1
    integer,allocatable,dimension(:)::y2
    integer,allocatable,dimension(:)::y4
   end type
   type x
    integer::x1
    integer,allocatable,dimension(:)::x2
    type(y),dimension(3)::x7
   end type
call sub
print *,'pass'
contains
subroutine sub
   type(x),allocatable,dimension(:)::xa
allocate(xa(2))
end subroutine 
end
