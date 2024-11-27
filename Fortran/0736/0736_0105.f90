call s1
print *,'pass'
end
subroutine s1
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
integer,parameter::j=1000
   type(x),dimension(j)::xa
allocate(xa(j)%x2(2))
end
