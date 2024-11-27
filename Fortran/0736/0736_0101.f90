do i=1,5
call s1
call s2
call s3
call s4
end do
print *,'pass'
contains
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
   type(x),allocatable,dimension(:)::xa
allocate(xa(2))
allocate(xa(2)%x2(3))
allocate(xa(2)%x2(3)%y2(2))
xa(2)%x2(3)%y2(2)=19
if (xa(2)%x2(3)%y2(2)/=19)write(6,*) "NG"
end subroutine
subroutine s2
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
   type(x),allocatable,dimension(:)::xa
allocate(xa(2))
allocate(xa(2)%x2(3))
end subroutine
subroutine s3
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
   type(x),allocatable,dimension(:)::xa
allocate(xa(2))
end subroutine
subroutine s4
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
   type(x),allocatable,dimension(:)::xa
end subroutine
end
