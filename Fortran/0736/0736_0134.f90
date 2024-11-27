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
nn=1
allocate(v(nn:nn))
allocate(v(nn)%xa(2))
v(nn)%xa(2)%y1=2
if (v(nn)%xa(2)%y1/=2)write(6,*) "NG"
write(21,*) loc(v(nn)%xa(2)%y1)
allocate(v(nn)%xa(2)%y2(3))
v(nn)%xa(2)%y2=(/11,12,13/)
if (any(v(nn)%xa(2)%y2/=(/11,12,13/)))write(6,*) "NG"
write(22,*) loc(v(nn)%xa(2)%y2(3))
deallocate(v(1)%xa)
end subroutine 
end
