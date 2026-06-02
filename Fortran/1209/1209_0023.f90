module m1
type base
  integer(8)::x0(4)
  character(:),allocatable::d
end type
type,extends(base):: ext
  character(:),allocatable::c
end type
type z
  integer(8)::z1
  type (base),allocatable:: z2
end type
  type  (base),allocatable:: v
  character(*),parameter::a1=repeat('1',1000)
  character(*),parameter::b1=repeat('2',1000)
contains
 subroutine s1
   allocate(v)
     write(41,"(z16.16)") loc(v)
   v%x0(1)=1
   allocate(v%d,source=a1)
     write(43,"(z16.16)") loc(v%d)
   call s2( z( 1 , v) )
   deallocate(v)
  end
 subroutine s2(d)
  type(z):: d
    integer,allocatable::x(:)
    v%x0(1)=-1
     if (v%d/=a1) print *,5039
     v%d=b1
  if (d%z1/=1) print *,1001
     if (d%z2%x0(1)/=1) print *,2001
     write(40,"(z16.16)") loc(d%z2%x0)
     if (d%z2%d/=a1) print *,5038
     write(42,"(z16.16)") loc(d%z2%d)
 end
end
use m1
do n=1,20
  call s1
end do
!call chk(1001)
!call chk(1002)
!call chk(1003)
  print *,'sngg578r : pass'
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
