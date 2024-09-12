module test_module
  use test_module2, only : PARAM2
  integer ::INT=0
  real R
  real, parameter :: PARAM = 1.1
contains
 subroutine s1
  R = PARAM + PARAM2
 end subroutine
end module test_module

module test_module2
  integer :: INT2 = 20
  real, parameter :: PARAM2 =1.2
end module test_module2


program main
  use test_module2, only : PARAM2
  use test_module

  implicit none
  integer A
  A = INT
print *,'pass'
end program main


