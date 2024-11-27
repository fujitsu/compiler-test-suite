call s1
print *,'pass'
end
subroutine s1
   type y
    integer,allocatable,dimension(:)::y2
    integer::y3
   end type
   type x
    integer::x1
    type(y),allocatable,dimension(:)::x7
   end type
   type(x),allocatable,dimension(:)::xa
 allocate(xa(1))
 xa(1)%x1=10
 allocate(xa(1)%x7(1))
end subroutine 
