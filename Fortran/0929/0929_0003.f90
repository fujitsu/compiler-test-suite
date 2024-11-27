module m1
type zzz
 integer,allocatable::i

contains
 final::xp
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
type(zzz),allocatable :: zz,vv
     
xpno=0
call omp_set_num_threads(2)
allocate(zz)
allocate(vv)
allocate(zz%i)
allocate(vv%i)

zz%i = 11
vv%i = 12

!$omp parallel 
!$omp sections lastprivate(zz), firstprivate(vv,zz)
!$omp section
  deallocate(zz%i)
  deallocate(vv%i)
  allocate(zz%i)
  allocate(vv%i)
  zz%i=21
  vv%i=22
!$omp end sections
!$omp end parallel

if ((vv%i /= 12)) print *,102,vv%i
if ((zz%i /= 21)) print *,101,zz%i
if (xpno /=4) print *,'NG : xpno(4)=',xpno
print *,'PASS'
end
