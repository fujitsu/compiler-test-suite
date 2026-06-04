module m1
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     character(:),allocatable::e1
 end type
  type,extends(e)::ee
     character(:),allocatable::e2
 end type
  type,extends(ee)::eee
     character(:),allocatable::e3
 end type
  type t
     integer(8)::du
     class(*),allocatable::name
  end type
character(*),parameter::c1=repeat('1',1000)
character(*),parameter::c2=repeat('2',1000)
character(*),parameter::c3=repeat('3',1000)
character(*),parameter::d1=repeat('a',1000)
character(*),parameter::d2=repeat('b',1000)
character(*),parameter::d3=repeat('c',1000)
contains
subroutine s0
  class(z),allocatable::w
allocate(ee::w)
    select type(w)
      type is(ee)
    allocate(w%e1,source=c1)
    allocate(w%e2,source=c2)
 write(2001,'(z16.16)') loc(w   %e1)
 write(2002,'(z16.16)') loc(w   %e2)
    end select
call s1(w)
   k=0
    select type(w)
      type is(eee)
    if (w%e1/=d1   ) print *,3001
    if (w%e2/=d2   ) print *,3002
    if (w%e3/=d3   ) print *,3003
      k=1
   end select
         if (k/=1) print *,12288
end
subroutine s1(w)
  class(z),allocatable,intent(out)::w
allocate(eee::w)
   k=0
    select type(w)
      type is(eee)
    allocate(w%e1,source=d1)
    allocate(w%e2,source=d2)
    allocate(w%e3,source=d3)
      k=1
   end select
         if (k/=1) print *,12288
end
end
use m1
do n=1,30
call s0
end do
!call chk(2001)
!call chk(2002)
     print *,'sngg359s : pass'
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
