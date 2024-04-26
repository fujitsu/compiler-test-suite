
module m0
  implicit none
  integer, save, private :: xxx

!$omp threadprivate(xxx)
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

print *,'pass'
end
