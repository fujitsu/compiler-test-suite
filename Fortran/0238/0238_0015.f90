module m0
  implicit none
  integer, save          :: yyy
  integer, save          :: xxx
  integer, save          :: zzz

!$omp threadprivate(xxx,yyy,zzz)
contains
  subroutine fx()
    implicit none
!$omp parallel
    xxx = xxx + 1
    yyy = yyy + 2
    zzz = zzz + 3
!$omp end parallel
  end subroutine
  subroutine fs()
    implicit none
!$omp parallel
    xxx = 1
    yyy = 1
    zzz = 1
!$omp end parallel
  end subroutine
  subroutine fc()
    implicit none
!$omp parallel
    if (xxx /= 12) print *,101
    if (yyy /= 14) print *,201,yyy
    if (zzz /= 16) print *,301
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
!$omp parallel
if (xxx/=12) print *,502
if (yyy/=14) print *,512
if (zzz/=16) print *,523
!$omp end parallel
print *,'pass'
end
