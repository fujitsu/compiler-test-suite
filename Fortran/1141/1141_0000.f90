module m1
contains
subroutine s1(d)
integer::d(..)
call sub1(d)
end
subroutine sub1(d)
type(*)::d(..)
write(14,'(z16.16)') loc(d)
end subroutine
subroutine s2(d)
type(*)::d(..)
call sub2(d)
end
subroutine sub2(d)
type(*)::d(..)
write(14,'(z16.16)') loc(d)
end subroutine
subroutine s3(d)
type(*)::d(:)
call sub3(d)
end
subroutine sub3(d)
type(*)::d(..)
write(14,'(z16.16)') loc(d)
end subroutine
subroutine s4(d)
type(*)::d
call sub4(d)
end
subroutine sub4(d)
type(*)::d
write(14,'(z16.16)') loc(d)
end subroutine
subroutine s5(d)
type(*)::d(*)
call sub5(d)
end
subroutine sub5(d)
type(*)::d(*)
write(14,'(z16.16)') loc(d)
end subroutine
subroutine s6(d)
class(*)::d(..)
call sub6(d)
end
subroutine sub6(d)
type(*)::d(..)
write(14,'(z16.16)') loc(d)
end subroutine
subroutine s7(d)
class(*)::d(:)
call sub7(d)
end
subroutine sub7(d)
type(*)::d(..)
write(14,'(z16.16)') loc(d)
end subroutine
subroutine s8(d)
class(*)::d
call sub8(d)
end
subroutine sub8(d)
type(*)::d(..)
write(14,'(z16.16)') loc(d)
end subroutine
subroutine s9(d)
class(*)::d(*)
call sub9(d)
end
subroutine sub9(d)
type(*)::d(*)
write(14,'(z16.16)') loc(d)
end subroutine
subroutine s31(d)
type(*)::d(:)
call sub31(d)
end
subroutine sub31(d)
type(*)::d(:)
write(14,'(z16.16)') loc(d)
end subroutine
subroutine s61(d)
class(*)::d(..)
call sub61(d)
end
subroutine sub61(d)
class(*)::d(..)
write(14,'(z16.16)') loc(d)
end subroutine
subroutine s62(d)
class(*)::d(..)
call sub62(d)
end
subroutine sub62(d)
type (*)::d(..)
write(14,'(z16.16)') loc(d)
end subroutine
subroutine s71(d)
class(*)::d(:)
call sub71(d)
end
subroutine sub71(d)
class(*)::d(..)
write(14,'(z16.16)') loc(d)
end subroutine
subroutine s72(d)
class(*)::d(:)
call sub72(d)
end
subroutine sub72(d)
class(*)::d(: )
write(14,'(z16.16)') loc(d)
end subroutine
subroutine s81(d)
class(*)::d
call sub81(d)
end
subroutine sub81(d)
type(*)::d
write(14,'(z16.16)') loc(d)
end subroutine
subroutine s91(d)
class(*)::d(*)
call sub91(d)
end
subroutine sub91(d)
class(*)::d(*)
write(14,'(z16.16)') loc(d)
end subroutine
end
use m1
integer::xs,xa(3)
write(13,'(z16.16)') loc(xs)
write(13,'(z16.16)') loc(xa)
call s1(xa)
call s2(xa)
call s3(xa)
call s4(xs)
call s5(xa)
call s6(xa)
call s7(xa)
call s8(xs)
call s9(xa)
call s31(xa)
call s61(xa)
call s62(xa)
call s71(xa)
call s72(xa)
call s81(xs)
call s91(xa)
call chk
print *,'sngg284m : pass'
end
!subroutine sub1_(d) bind(c)
!entry      sub2_(d) bind(c)
!entry      sub3_(d) bind(c)
!entry      sub5_(d) bind(c)
!entry      sub6_(d) bind(c)
!entry      sub7_(d) bind(c)
!entry      sub9_(d) bind(c)
!type(*)::d(* )
!write(14,'(z16.16)') loc(d)
!return
!entry      sub4_(dd) bind(c)
!entry      sub8_(dd) bind(c)
!type(*)::dd
!write(14,'(z16.16)') loc(dd)
!end
subroutine chk
character(16)::r1(2),r2
rewind 13
rewind 14
read(13,'(a)') r1(1)
read(13,'(a)') r1(2)
do k=1,100
read(14,'(a)',end=9) r2
if (r1(1)==r2) goto 3
if (r1(2)==r2) goto 3
!if (k==1 .or. k==2 .or.k==6 .or.k==3.or.k==6.or.k==7.or.k==8.or.k==11.or.k==12.or.k==13) then
!else
print *,809,k
!endif
cycle
3 continue
!if (k==1 .or. k==2 .or.k==6 .or.k==3.or.k==6.or.k==7.or.k==8.or.k==11.or.k==12.or.k= =13) print *,7011,k
end do
9end
