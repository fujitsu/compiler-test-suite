call s1
print *,'pass'
contains
subroutine s1
   type y
    integer::y1
    integer,allocatable,dimension(:)::y2
    integer::y3
   end type
   type(y),allocatable,dimension(:)::xa
allocate(xa(2))
end subroutine
end
