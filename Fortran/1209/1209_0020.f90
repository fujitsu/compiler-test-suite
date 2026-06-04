module m1
type base
  integer(8)::x0
  integer     ,allocatable::d
end type
type z
  integer(8)::z0
  integer(8)::z1
  type (base),allocatable:: z2
end type
  class (base),allocatable:: v
contains
 subroutine s1
   allocate(v)
   v%x0=1
   allocate(v%d,source=1)
   call s2( z( 1 ,2, v) )
   deallocate(v)
  end
 subroutine s2(dd)
  type(z):: dd
    v%x0=-1
    if (v%d/=1) print *,5039
     v%d=2
     write(33,"(z16.16)") loc(dd%z2%x0)
     if (dd%z2%x0/=1) print *,5038
     if (dd%z2%d/=1) print *,5038
 end
end
use m1
do n=1,2
  call s1
end do
  print *,'sngg575r : pass'
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
