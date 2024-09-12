module mod01
 interface m01_sub
  module procedure m01_sub01, m01_sub02, m01_sub03, m01_sub04
 end interface
 contains
  subroutine m01_sub01(m01_s01_arg01)
   type ty00
    sequence
    integer (kind = 1) :: ty00_component
   end type
   type ty01
    sequence
    type (ty00) :: ty01_component
   end type
   type (ty01) :: m01_s01_arg01
  end subroutine
  subroutine m01_sub02(m01_s02_arg01)
   type ty00
    sequence
    integer (kind = 2) :: ty00_component
   end type
   type ty01
    sequence
    type (ty00) :: ty01_component
   end type
   type (ty01) :: m01_s02_arg01
  end subroutine
  subroutine m01_sub03(m01_s03_arg01)
   type ty00
    sequence
    integer (kind = 4) :: ty00_component
   end type
   type ty01
    sequence
    type (ty00) :: ty01_component
   end type
   type (ty01) :: m01_s03_arg01
  end subroutine
  subroutine m01_sub04(m01_s04_arg01)
   type ty00
    sequence
    integer (kind = 8) :: ty00_component
   end type
   type ty01
    sequence
    type (ty00) :: ty01_component
   end type
   type (ty01) :: m01_s04_arg01
  end subroutine
end module

use mod01

type ty00
 sequence
 integer (kind = 1) :: ty00_component
end type

type ty01
 sequence
 type (ty00) :: ty01_component
end type

call m01_sub(ty01(ty00(1)))

print *,'pass'

end
