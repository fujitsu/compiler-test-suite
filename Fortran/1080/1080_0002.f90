module m1
!use mpi_f08_interfaces
contains
subroutine suba(buf)
type(*) :: buf(..)
call s02(buf)   !!!
end subroutine
subroutine subb(buf)
type(*) :: buf(:)
call s01(buf)   !!!
call s02(buf)   !!!
end subroutine
subroutine s01(buf)
type(*) :: buf(:)
!print '("s01 :",z16.16)',loc(buf)
write(20,'(z16.16)')loc(buf)
end subroutine
subroutine s02(buf)
type(*) :: buf(..)
!print '("s02 :",z16.16)',loc(buf)
write(20,'(z16.16)')loc(buf)
end subroutine
end

program main
use m1
real(8)  :: r8(2)=[1,2]
write(19,'(z16.16)')loc(r8)
call suba(r8)
call subb(r8)
call chk
print *,'sngg235m : pass'
end
subroutine chk
character(16)::r1(2),r2
rewind 19
read(19,'(a)') r1(1)
rewind 20
do
read(20,'(a)',end=9) r2
do k=1,1
if (r1(k)==r2) goto 1
end do
print *,808
1 continue
end do
9end

