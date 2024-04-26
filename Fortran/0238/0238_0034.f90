module m0
  implicit none
  integer, save, private :: yyy
  integer, save          :: xxx
  integer, save, private :: zzz
  common /xcmn/ ixx,kxx
  integer   ::  ixx,kxx

!$omp threadprivate(xxx,yyy,zzz)
!$omp threadprivate(/xcmn/)
contains
  subroutine fx()
    implicit none
!$omp parallel
    xxx = xxx + 1
    ixx = ixx + 5
    kxx = kxx + 4
    yyy = yyy + 2
    zzz = zzz + 3
!$omp end parallel
  end subroutine
  subroutine fs()
    implicit none
!$omp parallel
    xxx = 1
    ixx = 1
    kxx = 1
    yyy = 1
    zzz = 1
!$omp end parallel
  end subroutine
  subroutine fc()
    implicit none
!$omp parallel
    if (xxx /= 12) print *,101
    if (ixx /= 36) print *,401
    if (kxx /= 25) print *,501
    if (yyy /= 3) print *,201,yyy
    if (zzz /= 4) print *,301
!$omp end parallel
  end subroutine
end module m0

module m1
  use m0
  implicit none
end module m1

module m2
  use m1
  implicit none
  common /wcmn/ iww,kww
  integer   ::  iww,kww
  integer, save, private  :: ww1
  integer, save, private :: ww2
  integer, save, private :: ww3
!$omp threadprivate(ww1,ww2,ww3)
!$omp threadprivate(/wcmn/)

contains
  subroutine f0
!$omp parallel
   ww1=1
   ww2=1
   ww3=1
   iww=2
   kww=2
!$omp end parallel
  end subroutine
  subroutine f1(x)
    implicit none
    integer :: x
!$omp parallel
    ww1=ww1+1
    ww2=ww2+2
    ww3=ww3+3
    iww=iww+4
    kww=kww+5
    if (ww1/=2) print *,100001,ww1
    if (ww2/=3) print *,100002
    if (ww3/=4) print *,100003
    if (iww/=6) print *,100004
    if (kww/=7) print *,100005
    x = x + 1
    xxx = xxx + 10
    kxx = kxx + 20
    ixx = ixx + 30
!$omp end parallel
  end subroutine f1
end module m2
use m2
k=0
call f0
call fs
call f1(k)

call fx
call fc
if (xxx/=12) print *,501
if (ixx/=36) print *,601
if (kxx/=25) print *,611
    if (iww/=6) print *,200004
    if (kww/=7) print *,200005
!$omp parallel
if (xxx/=12) print *,502
if (ixx/=36) print *,602
if (kxx/=25) print *,612
    if (iww/=6) print *,300004
    if (kww/=7) print *,300005
!$omp end parallel
print *,'pass'
end
