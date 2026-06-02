module m1
type base
  character(:),allocatable::x2
end type
type,extends(base):: ext
  integer(8)::x1
end type
type z
  integer(8)::z1
  class(base),allocatable:: z2
end type
  character(*),parameter::a1=repeat('1',1000)
  character(*),parameter::a2=repeat('2',1000)
contains
 subroutine s1
  class(base),allocatable:: v
  type(z):: d
   allocate(ext::v)
   select type(v)
    type is(ext)
   v%x1=1
      allocate(v%x2,source=a1)
     write(1,'(z16.16)') loc(v%x2)
   end select
   d =      z( 1 , v)

  k=0
  if (d%z1/=1) print *,1001
  select type (p=>d%z2)
   type is(ext)
     k=1
     if (p%x1/=1) print *,2001
     if (p%x2/=a1) print *,2002
     write(2,'(z16.16)') loc(p%x2)
     p%x2=a2
   end select
  if (k/=1) print *,1001

  k=0
  select type(v)
    type is(ext)
     if (v%x2/=a1) print *,2012
     k=1
  end select
  if (k/=1) print *,1001
  end
end
use m1
  do n=1,20
  call s1
  end do
  !call chk(1001)
  !call chk(1002)
  print *,'sngg351r : pass'
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
