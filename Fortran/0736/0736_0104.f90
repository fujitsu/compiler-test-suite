   type y
    integer::y1
    integer,allocatable,dimension(:)::y2
    integer::y3
   end type
   type x
    integer::x1
    type(y),allocatable,dimension(:)::x2
    integer::x3
   end type
call s1
print *,'pass'
contains
subroutine s1
integer,parameter::i=500,j=1000
   type(x),dimension(i,j)::xa
allocate(xa(i,j)%x2(2))
end subroutine
end
