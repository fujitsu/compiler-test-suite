do i=1,10
call subx
end do
print *,'pass'
contains
subroutine subx
   type y
    integer::y1
    integer,allocatable,dimension(:)::y2
   end type
   type yy
    integer::y1
    type(y),allocatable,dimension(:)::y2
   end type
   type yyy
    integer::y1
    type(yy),allocatable,dimension(:)::y2
   end type
type w
   integer ::xd1
   type(yyy),allocatable,dimension(:)::xa
   integer ::xd2
end type
type (w)::v(2)
j=2
allocate(v(1)%xa(j))
allocate(v(1)%xa(j)%y2(2))
deallocate(v(1)%xa(j)%y2)
deallocate(v(1)%xa)
end subroutine 
end
