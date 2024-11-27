   type y
    integer::y1
    integer,allocatable,dimension(:)::y2
   end type
do i=1,10
call sub
end do
do i=1,10
call subx
end do
print *,'pass'
contains
subroutine sub
type w
   integer ::xd1
   type(y),allocatable,dimension(:)::xa
   type(y),pointer    ,dimension(:)::xb
   integer ::xd2
end type
type (w)::v
allocate(v%xa(2))
v%xa(2)%y1=2
if (v%xa(2)%y1/=2)write(6,*) "NG"
write(1,*) loc(v%xa(2)%y1)
allocate(v%xa(2)%y2(3))
v%xa(2)%y2=(/11,12,13/)
if (any(v%xa(2)%y2/=(/11,12,13/)))write(6,*) "NG"
write(2,*) loc(v%xa(2)%y2(3))
deallocate(v%xa)
allocate(v%xb(2))
v%xb(2)%y1=2
if (v%xb(2)%y1/=2)write(6,*) "NG"
write(11,*) loc(v%xb(2)%y1)
allocate(v%xb(2)%y2(3))
v%xb(2)%y2=(/11,12,13/)
if (any(v%xb(2)%y2/=(/11,12,13/)))write(6,*) "NG"
write(12,*) loc(v%xb(2)%y2(3))
deallocate(v%xb)
end subroutine 
subroutine subx
type w
   integer ::xd1
   type(y),allocatable,dimension(:)::xa
   type(y),pointer    ,dimension(:)::xb
   integer ::xd2
end type
type (w),allocatable::v(:)
nn=10000
allocate(v(nn:10000))
allocate(v(nn)%xa(2))
v(nn)%xa(2)%y1=2
if (v(nn)%xa(2)%y1/=2)write(6,*) "NG"
write(21,*) loc(v(nn)%xa(2)%y1)
allocate(v(nn)%xa(2)%y2(3))
v(nn)%xa(2)%y2=(/11,12,13/)
if (any(v(nn)%xa(2)%y2/=(/11,12,13/)))write(6,*) "NG"
write(22,*) loc(v(nn)%xa(2)%y2(3))
deallocate(v(nn)%xa)
allocate(v(nn)%xb(2))
v(nn)%xb(2)%y1=2
if (v(nn)%xb(2)%y1/=2)write(6,*) "NG"
write(23,*) loc(v(nn)%xb(2)%y1)
allocate(v(nn)%xb(2)%y2(3))
v(nn)%xb(2)%y2=(/11,12,13/)
if (any(v(nn)%xb(2)%y2/=(/11,12,13/)))write(6,*) "NG"
write(24,*) loc(v(nn)%xb(2)%y2(3))
deallocate(v(nn)%xb)
end subroutine 
end
