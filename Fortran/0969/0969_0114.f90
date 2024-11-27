module mod01
 type, bind(c) :: ty01
  private
  integer, public :: ii_pr01
 end type
end module

module mod02
 type, bind(c) :: ty01
  private
  integer, public :: ii_pr01
 end type
end module

use mod01

type (ty01) :: a

call csub01(a)

contains
 subroutine csub01(b)
  use mod02
  type (ty01) :: b
 end subroutine
end
