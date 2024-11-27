   type y
    integer::y1
    integer,allocatable,dimension(:,:)::y2
    integer,allocatable,dimension(:,:)::y4
   end type
   type x
    integer::x1
    type(y),allocatable,dimension(:)::x2
    integer,allocatable,dimension(:)::x3
   end type
call       s1
print *,'pass'
contains
subroutine s1
   type(x),dimension(2)::x1a
allocate(x1a(1)%x2(3),x1a(1)%x3(3))
end subroutine
end
