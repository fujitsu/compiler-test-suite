module mod01
 interface m01_sub
  module procedure m01_sub01, m01_sub02
 end interface
 contains
  subroutine m01_sub01(m01_s01_arg01)
   type ty01
    sequence
    integer :: i01
    procedure(character(1)), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s01_arg01
  end subroutine
  subroutine m01_sub02(m01_s02_arg01)
   type ty01
    sequence
    integer :: i01
    procedure(character(2)), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s02_arg01
  end subroutine
end module

use mod01

type ty01
 sequence
 integer :: i01
 procedure(character(1)), pointer, nopass :: pr_pn01
end type

type (ty01) :: t01

call m01_sub(t01)

print *,'pass'

end
