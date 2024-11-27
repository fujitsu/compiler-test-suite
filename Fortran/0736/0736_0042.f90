module xx
type x
 integer::k01=1
 integer::k02=2
end type
end
subroutine t
use xx
type(x)::y1
call sub
call sub(y1)
y1=x(-1,-2)
call sub
call sub(y1)
contains
subroutine sub(y1)
type(x),intent(out),optional::y1
integer,allocatable::y2(:)
allocate(y2(2))
y2=(/1,2/)
if (present(y1))then
write(1,*)y1
endif
write(1,*)y2
end subroutine
end
call t
rewind 1
do i=1,6
read(1,*)j1,j2
if (any((/j1,j2/)/=(/1,2/)))write(6,*) "NG"
end do
print *,'pass'
end
