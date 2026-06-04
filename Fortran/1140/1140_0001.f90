module m1
contains
subroutine s53(d)
type(*)::d(*)
call sub5(d)
end
subroutine sub5(d)
type(*)::d(* )
write(10,'(z16.16)') loc(d)
end subroutine
end
use m1
integer::xa(3)
write(9,'(z16.16)') loc(xa)
call s53(xa)
call chk
print *,'sngg260m : pass'
end
subroutine chk
character(16)::r1(2),r2
rewind 9
rewind 10
read(9,'(a)') r1(1)
do k=1,100
read(10,'(a)',end=9) r2
if (r1(1)==r2) cycle
print *,809
end do
9end
