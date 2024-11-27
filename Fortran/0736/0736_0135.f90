   type y
    integer::y1
    integer,allocatable,dimension(:)::y2
   end type
do i=1,10
call subx
end do
print *,'pass'
contains
subroutine subx
type w
   integer ::xd1
   type(y),allocatable,dimension(:)::xa
   integer ::xd2
end type
type (w),allocatable::v(:)
allocate(v(1))
allocate(v(1)%xa(1))
deallocate(v(1)%xa)
end subroutine 
end
