module m1
type base
  integer(8)::x0(1000)
end type
type,extends(base):: ext
  character(:),allocatable::c
end type
type z
  integer(8)::z1
  class(base),allocatable:: z2
end type
  class (base ),allocatable:: v
  character(*),parameter::a1=repeat('1',1000)
contains
 subroutine s1
   allocate(ext::v)
   v%x0(1)=1
select type (v)
  type is(ext)
   allocate(v%c,source=a1)
end select
   call s2( z( 1 , v) )
   if (allocated(v)) print *,2828
  end
 subroutine s2(d)
  type(z):: d
    integer,allocatable::x(:)
    deallocate(v)
    allocate(x(100),source=-1)
  if (d%z1/=1) print *,1001
     if (d%z2%x0(1)/=1) print *,2001
     write(22,"(z16.16)") loc(d%z2%x0)
  k=0
  select type(p=>d%z2)
    type is(ext)
     if (p%c/=a1) print *,2038
     write(23,"(z16.16)") loc(p%c)
     k=1
  end select
  if (k/=1) print *,2932
 end
end
use m1
do n=1,20
  call s1
end do
!call chk(1001)
!call chk(1002)
  print *,'sngg361r : pass'
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
