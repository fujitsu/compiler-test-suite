module m0
  implicit none
  integer, save, private :: xxx
  integer, save, private :: yyy

!$omp threadprivate(xxx,yyy)
contains
  subroutine fx()
    implicit none
    xxx = xxx + 1
    yyy = yyy + 2
  end subroutine
  subroutine fs()
    implicit none
    xxx = 1
    yyy = 1
  end subroutine
  subroutine fc()
    implicit none
    if (xxx /= 2) print *,101
    if (yyy /= 3) print *,201
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
    x = x + 1
  end subroutine f1
end module m2
use m2
k=0
call f1(k)
if (k/=1) print *,201
call fs
call fx
call fc
print *,'pass'
end
