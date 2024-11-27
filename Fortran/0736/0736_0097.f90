   type y
    integer::y1
   end type
   type x
    integer::x1
    type(y),allocatable,dimension(:)::x2
    integer,allocatable,dimension(:)::x3
   end type
   type(x),dimension(2)::x1a
   type(x),dimension(2)::x2a
   type(x),dimension(2)::x3a
   type(x),dimension(2)::x4a
allocate(x1a(1)%x2(3))
deallocate(x2a(1)%x2,stat=kk)
if (kk==0)write(6,*) "NG"
if (allocated(x3a(1)%x2))write(6,*) "NG"
call xx(x4a(1)%x2)
print *,'pass'
contains
subroutine xx(x)
  type(y),allocatable,dimension(:)::x
if (allocated(x))write(6,*) "NG"
end subroutine
end
