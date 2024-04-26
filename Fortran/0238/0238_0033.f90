module m0
  implicit none
  integer, save          :: yyy
  common /xcmn/ ixx,kxx
  integer   ::  ixx,kxx
!$omp threadprivate(/xcmn/)
  common /ycmn/ iyy,kyy
  integer   ::  iyy,kyy
!$omp threadprivate(/ycmn/)
  integer, save          :: xxx
  integer, save          :: zzz
!$omp threadprivate(xxx,yyy,zzz)
  common /zcmn/ izz,kzz
  integer   ::  izz,kzz
!$omp threadprivate(/zcmn/)
contains
  subroutine fx()
    implicit none
!$omp parallel
    xxx = xxx + 1
    yyy = yyy + 2
    zzz = zzz + 3
    ixx = ixx + 5
    kxx = kxx + 4
    iyy = iyy + 5
    kyy = kyy + 4
    izz = izz + 5
    kzz = kzz + 4
!$omp end parallel
  end subroutine
  subroutine fs()
    implicit none
!$omp parallel
    izz = 1
    kzz = 1
    ixx = 1
    kxx = 1
    xxx = 1
    yyy = 1
    zzz = 1
    iyy = 1
    kyy = 1
!$omp end parallel
  end subroutine
  subroutine fc()
    implicit none
!$omp parallel
    if (ixx /= 36) print *,401
    if (kxx /= 25) print *,501
    if (xxx /= 12) print *,101
    if (yyy /= 14) print *,201,yyy
    if (zzz /= 16) print *,301
    if (iyy /= 36) print *,1401
    if (kyy /= 25) print *,1501
    if (izz /= 36) print *,2401
    if (kzz /= 25) print *,2501
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

contains
  subroutine f1(x)
    implicit none
    integer :: x
!$omp parallel
    x = x + 1
    xxx = xxx + 10
    yyy = yyy + 11
    zzz = zzz + 12
    kxx = kxx + 20
    ixx = ixx + 30
    kyy = kyy + 20
    iyy = iyy + 30
    kzz = kzz + 20
    izz = izz + 30
!$omp end parallel
  end subroutine f1
end module m2
use m2
k=0
call fs
call f1(k)

call fx
call fc
if (xxx/=12) print *,501
if (yyy/=14) print *,511
if (zzz/=16) print *,521
if (ixx/=36) print *,601
if (kxx/=25) print *,611
if (iyy/=36) print *,701
if (kyy/=25) print *,711
if (izz/=36) print *,801
if (kzz/=25) print *,811
!$omp parallel
if (xxx/=12) print *,502
if (yyy/=14) print *,512
if (zzz/=16) print *,523
if (ixx/=36) print *,602
if (kxx/=25) print *,612
if (iyy/=36) print *,702
if (kyy/=25) print *,712
if (izz/=36) print *,802
if (kzz/=25) print *,812
!$omp end parallel
print *,'pass'
end
