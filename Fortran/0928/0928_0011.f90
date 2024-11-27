module m1
type zzz
 integer,allocatable::i

contains
 final::xp
end type

type,extends(zzz) :: yyy
 character(len=5)::c
 integer,allocatable::y
end type
integer::xpno
contains
subroutine xp(dmy)
type(zzz)::dmy
!$omp atomic
 xpno=xpno+1
end subroutine
end module

use m1
class(zzz),allocatable :: vv
class(zzz),allocatable :: zz
     
xpno=0
call omp_set_num_threads(2)
allocate(vv)
allocate(vv%i)
allocate(yyy::zz)
allocate(zz%i)

zz%i = 11
vv%i = 12

select type(zz)
 type is(yyy)
  allocate(zz%y)
  zz%y = 13
  zz%c = "AAAAA"
 
 class default
  print*,"911"
end select

!$omp parallel
!$omp sections lastprivate(zz), firstprivate(vv,zz)
!$omp section
  deallocate(zz%i)
  deallocate(vv%i)
  allocate(zz%i)
  allocate(vv%i)
  zz%i=21
  vv%i=22

  select type(zz)
   type is(yyy)
    deallocate(zz%y)
    allocate(zz%y)
    zz%y = 23
    zz%c = "BBBBB"
 
   class default
    print*,"912"
  end select
!$omp end sections
!$omp end parallel

if ((vv%i /= 12)) print *,101,vv%i
if ((zz%i /= 21)) print *,102,zz%i

select type(zz)
 type is(yyy)
  if(zz%y /= 23) print*,"103"
  if(zz%c /= "BBBBB") print*,"104"
 
 class default
  print*,"913"
end select

if( xpno /= 5 .and. xpno /= 0) print *,'NG : xpno(5)=',xpno
print *,'PASS'
end
