module km
integer,parameter::kh=10000
end
module m1
use km
type y
  integer::y1
  contains
   final::fy
end type
type,extends(y)::yy
  integer::y2
  contains
   final::fyy
end type
 type x
  integer::x1=1
  integer,pointer    ::x3(:)
  class(y),allocatable::x4(:)
end type
contains
recursive subroutine s1(a)
  type(x),intent(out):: a
  if (allocated(a%x4)) print *,104
  if (a%x1/=1        ) print *,103
  allocate(a%x4(2))
write(1,'(z16.16)') loc(a%x4)
end subroutine
subroutine fy(d)
type(y)::d
print *,7001
end subroutine
subroutine fyy(d)
type(yy)::d
print *,8001
end subroutine
end
use m1
  type(x):: a
do n=1,kh
call s1(a)
end do
call chk(1)
print *,'pass'
end
subroutine chk(n)
use km
character(16):: c,cc(100)
k=0
rewind n
do nn=1,kh
 read(n,'(a)') c
 do kk=1,k
   if (cc(kk)==c) then
     goto 2
   endif
 end do
 k=k+1
 if (k>100) then
    return
 endif
 cc(k)=c
2 continue
end do
end
