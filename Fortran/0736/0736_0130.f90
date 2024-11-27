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
write(1,*) loc(xa(2)%y1)
deallocate(xa)
end subroutine 
end
