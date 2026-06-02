module m1
type base
  integer(8)::x0(1000)
end type
type,extends(base):: ext
  integer(8)::x1
end type
type z
  integer(8)::z1
  class(base),allocatable:: z2
end type
contains
 subroutine s1
  type (base),allocatable:: v
   allocate(v)
   v%x0(1)=1
   call s2( z( 1 , v) )
     if (v%x0(1)/=1) print *,2012
  end
 subroutine s2(d)
  type(z):: d
  if (d%z1/=1) print *,1001
     if (d%z2%x0(1)/=1) print *,2001
     write(18,"(z16.16)") loc(d%z2%x0)
     d%z2%x0(1)=2
 end
end
use m1
do n=1,20
  call s1
end do
!call chk(1001)
  print *,'sngg357r : pass'
end
 subroutine  chk(k)
     character(16)::x(1000)
     rewind (k)
     kk=1
     do
       read(k ,'(a)',end=100) x(kk)
       kk=kk+1
     end do
  100 continue
     kk=kk-1
     if (kk>1000) stop 999
     do nn=1,kk-1
      do nnn=nn+1,kk
        if (x(nn)==x(nnn)) return
      end do
     end do
  500 print *,"Please check UNIT",k
     end
