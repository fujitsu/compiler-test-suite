module m0
  implicit none
  common /xcmn/ ixx,kxx
  integer   ::  ixx,kxx
!$omp threadprivate(/xcmn/)

  integer, save ,private :: xxx
  integer, save, private :: yyy
  integer, save, private :: zzz

!$omp threadprivate(xxx,yyy,zzz)
contains
  subroutine fx()
    implicit none
!$omp parallel
    ixx = ixx + 5
    kxx = kxx + 4

    xxx = xxx + 1
    yyy = yyy + 2
    zzz = zzz + 3
!$omp end parallel
  end subroutine
  subroutine fs()
    implicit none
!$omp parallel
    ixx = 1
    kxx = 1
    xxx = 1
    yyy = 1
    zzz = 1
!$omp end parallel
  end subroutine
  subroutine fc()
    implicit none
!$omp parallel
    if (ixx /= 36) print *,401
    if (kxx /= 25) print *,501
    if (xxx /= 2) print *,101
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

contains
  subroutine f1(x)
    implicit none
    integer :: x
!$omp parallel
    x = x + 1
    kxx = kxx + 20
    ixx = ixx + 30

!$omp end parallel
  end subroutine f1
end module m2
subroutine s1
use m2
k=0
xxx=15
call fs
call f1(k)

call fx
call fc
if (ixx/=36) print *,601
if (kxx/=25) print *,611

if (xxx/=15) print *,501
!$omp parallel
if (xxx/=15) print *,502
if (ixx/=36) print *,602
if (kxx/=25) print *,612

!$omp end parallel
end
call s1
print *,'pass'
end
