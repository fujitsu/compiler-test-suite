module m1
contains
subroutine sub4(buf)
real(4)  :: buf(..)
call mpi_isend(buf)   !!!
end subroutine
subroutine sub8(buf)
real(8) :: buf(..)
call mpi_isend(buf)   !!!
end subroutine
subroutine sub(buf)
type(*) :: buf(..)
call mpi_isend(buf)   !!!
end subroutine
subroutine suba(buf)
type(*) :: buf(:)
call mpi_isend(buf)   !!!
end subroutine
subroutine mpi_isend(buf)
type(*) :: buf(..)
!print '("mpi_isend:",z16.16)',loc(buf)
write(14,'(z16.16)')loc(buf)
end subroutine
end

program main
use m1
real(4)  :: r4(2)=[1,2]
real(8)  :: r8(2)=[1,2]
!print '("main r4:",z16.16)',loc(r4)
!print '("main r8:",z16.16)',loc(r8)
write(13,'(z16.16)')loc(r4)
write(13,'(z16.16)')loc(r8)
call sub4(r4)
call sub8(r8)
call sub(r4)
call sub(r8)
call suba(r4)
call suba(r8)
call chl
print *,'sngg232m : pass'
end

subroutine chl
character(16)::r1(2),r2
rewind 13
read(13,'(a)') r1(1)
read(13,'(a)') r1(2)
rewind 14
do
read(14,'(a)',end=9) r2
do k=1,2
if (r1(k)==r2) goto 1
end do
print *,808
1 continue
end do
9end
