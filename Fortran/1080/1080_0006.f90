module m1
contains
subroutine suba(buf)
type(*) :: buf(*)
write(29,'(z16.16)')loc(buf)
end subroutine
end

program main
use m1
real(4)  :: r4(2)=[1,2]
!print '("main r4:",z16.16)',loc(r4)
write(30,'(z16.16)')loc(r4)
call suba(r4)
call chk
print *,'sngg240m : pass'
end
subroutine chk
character(16)::r1,r2
rewind 29
read(29,'(a)') r1
rewind 30
read(30,'(a)') r2
if (r1/=r2) print *,2002
end

