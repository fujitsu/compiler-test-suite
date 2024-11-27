call s1
print *,'pass'
end
subroutine s1
   type y
    integer,allocatable,dimension(:)::y2
   end type
   type x
    integer::x1
    type(y),dimension(1)::x7
   end type
   type(x),allocatable,dimension(:)::xa
 allocate(xa(1))
xa(1)%x1=10
end subroutine 
