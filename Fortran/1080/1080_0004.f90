module m1
!use mpi_f08_interfaces
contains
subroutine subb(buf)
type(*) :: buf(:)
call s01(buf)   !!!
end subroutine
subroutine s01(buf)
type(*) :: buf(:)
write(24, '(z16.16)')loc(buf)
call s02(buf)   !!!
end subroutine
subroutine s02(buf)
type(*) :: buf(..)
write(24, '(z16.16)')loc(buf)
end subroutine
end

program main
use m1
real(8)  :: r8(2)=[1,2]
write(23, '(z16.16)')loc(r8 )
call subb(r8)
call chl
print *,'sngg237m : pass'
end
subroutine chl
character(16)::r1(2),r2
rewind 23
read(23,'(a)') r1(1)
rewind 24
do
read(24,'(a)',end=9) r2
do k=1,1
if (r1(k)==r2) goto 1
end do
print *,808
1 continue
end do
9end

