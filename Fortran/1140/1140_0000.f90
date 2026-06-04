module m1
contains
subroutine s1(d)
integer::d(..)
interface
subroutine sub(d)
integer::d(..)
end
end interface
call sub(d)
end
end
use m1
integer::x(3)
write(7,'(z16.16)') loc(x)
call s1(x)
call chk
print *,'sngg258m : pass'
end
subroutine sub(d)
integer::d(* )
write(8,'(z16.16)') loc(d)
end
subroutine chk
character(16)::r1,r2
rewind 7
rewind 8
read(7,'(a)') r1
read(8,'(a)') r2
if (r1==r2) print *,202
end
