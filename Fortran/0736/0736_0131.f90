   type y
    integer::y1
    integer,allocatable,dimension(:)::y2
   end type
do i=1,10
call sub
end do
print *,'pass'
contains
subroutine sub
   type(y),allocatable,dimension(:)::xa
allocate(xa(2))
xa(2)%y1=2
if (xa(2)%y1/=2)write(6,*) "NG"
write(27,*) loc(xa(2)%y1)
allocate(xa(2)%y2(3))
xa(2)%y2=(/11,12,13/)
if (any(xa(2)%y2/=(/11,12,13/)))write(6,*) "NG"
write(28,*) loc(xa(2)%y2(3))
deallocate(xa)
end subroutine
end
