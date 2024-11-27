   type a2
    integer,allocatable,dimension(:)::z1
    integer,allocatable,dimension(:)::z2
    integer,allocatable,dimension(:)::z3
    integer,allocatable,dimension(:)::z4
    integer,allocatable,dimension(:)::z5
   end type
   type a1
    type(a2)::z41
    type(a2)::z42
    type(a2)::z43
    type(a2)::z44
    type(a2)::z45
    type(a2)::z46
   end type
   type z
    integer::z1
    integer,allocatable,dimension(:)::z2
    integer::z3
    type(a1),allocatable,dimension(:)::z4
   end type
   type y
    integer::y1
    integer,allocatable,dimension(:,:)::y2
    type(z),allocatable,dimension(:,:)::y3
    integer::y4
   end type
   type x
    integer::x1
    type(y),allocatable,dimension(:)::x2
    integer::x3
   end type
type(x),dimension(2)::xb
type(x),allocatable,dimension(:)::yb
call s1(xb,yb)
print *,'pass'
contains
subroutine s1(xb,yb)
   type(x),dimension(2)::xa,xb
   type(x),allocatable,dimension(:)::ya,yb
do i=1,2
allocate(xa(i)%x2(3))
j=3
allocate(xa(i)%x2(j)%y3(4,2))
deallocate(xa(i)%x2(j)%y3)
end do
end subroutine
end
