module km
integer,parameter::kh=10
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
  class(y),allocatable::x2(:)
end type
contains
recursive subroutine s1(a)
  type(x),intent(out):: a
  if (allocated(a%x2)) print *,101
  if (a%x1/=1        ) print *,103
  k=0
  select type (p=>a%x2)
    type is(y)
     k=1
  end select
  if(k/=1) print *,201
  allocate(yy::a%x2(2))
write(2,'(z16.16)') loc(a%x2)
end subroutine
subroutine fy(d)
type(y)::d
write(11,*)7001
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
call chk11(11)
print *,'pass'
end
subroutine chk11(k)
rewind k 
do n=1,18
   read(k ,*) nn
   if (nn/=7001) stop 999
end do
end