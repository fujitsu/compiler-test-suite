   type z
    integer::z1
    integer,allocatable,dimension(:)::z2
    integer::z3
   end type
   type y
    integer::y1
    type(z),allocatable,dimension(:)::y3
    integer,allocatable,dimension(:)::y4
   end type
   type x
    integer::x1
    type(y),allocatable,dimension(:)::x2
   end type
call       s1
print *,'pass'
contains
subroutine s1
   type(x),dimension(2)::x2a
allocate(x2a(2)%x2(3))
allocate(x2a(2)%x2(1)%y3(1),x2a(2)%x2(1)%y4(1))
deallocate(x2a(2)%x2(1)%y3,x2a(2)%x2(1)%y4)
end subroutine
end
