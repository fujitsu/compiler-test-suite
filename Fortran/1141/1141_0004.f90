module m1
contains
subroutine s3(d)
type(*)::d
call sub32(d)
end
subroutine s2(d)
type(*)::d(:)
call sub21(d)
call sub22(d)
end
subroutine s4(d) bind(c)
type(*)::d(..)
call sub21(d)
!!!call sub22(d)
end
subroutine s1(d) bind(c)
type(*)::d
call sub32(d)
end
subroutine sub32(d)
type(*)::d
write(22,'(z16.16)') loc(d)
end subroutine
subroutine sub21(d)
type(*)::d(..)
write(22,'(z16.16)') loc(d)
end subroutine
subroutine sub22(d)
type(*)::d(* )
write(22,'(z16.16)') loc(d)
end subroutine
end
use m1
integer::xa(3)
write(21,'(z16.16)') loc(xa)
call s3(xa(1))
call s1(xa(1))
call chk
print *,'sngg288m : pass'
end
subroutine chk
character(16)::r1(2),r2
rewind 21
rewind 22
read(21,'(a)') r1(1)
do k=1,100
read(22,'(a)',end=9) r2
if (r1(1)==r2) goto 3
print *,809,k
cycle
3 continue
end do
9end
