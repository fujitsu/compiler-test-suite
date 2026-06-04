module m1
contains
subroutine s3(d,n2)
type(*),target::d(:)
do k=1,n2
call sub31(d)
call sub32(d)
call sub33(d)
end do
end
subroutine sub31(d)
type(*),target::d(..)
write(20,'(z16.16)') loc(d)
end subroutine
subroutine sub32(d)
type(*),target::d(: )
write(20,'(z16.16)') loc(d)
end subroutine
subroutine sub33(d)
type(*)::d(* )
write(20,'(z16.16)') loc(d)
end subroutine
end
use m1
integer::xa(3)
write(19,'(z16.16)') loc(xa)
call s3(xa(::2),1)
call chk
print *,'sngg287m : pass'
end
subroutine chk
character(16)::r1(2),r2
rewind 19
rewind 20
read(19,'(a)') r1(1)
do k=1,100
read(20,'(a)',end=9) r2
if (r1(1)==r2) goto 3
if (k==3) cycle
print *,809,k
cycle
3 continue
if (k==3) print *,8091
end do
9end
