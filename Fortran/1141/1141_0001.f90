module m1
contains
subroutine s3(d)
type(*)::d(:)
call sub31(d)
call sub32(d)
call sub33(d)
end
subroutine sub31(d)
type(*)::d(..)
write(16,'(z16.16)') loc(d)
end subroutine
subroutine sub32(d)
type(*)::d(: )
write(16,'(z16.16)') loc(d)
end subroutine
subroutine sub33(d)
type(*)::d(* )
write(16,'(z16.16)') loc(d)
end subroutine
end
use m1
integer::xs,xa(3)
write(15,'(z16.16)') loc(xs)
write(15,'(z16.16)') loc(xa)
call s3(xa)
call chk
print *,'sngg285m : pass'
end
subroutine chk
character(16)::r1(2),r2
rewind 15
rewind 16
read(15,'(a)') r1(1)
read(15,'(a)') r1(2)
do k=1,100
read(16,'(a)',end=9) r2
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
