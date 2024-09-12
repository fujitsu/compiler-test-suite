module mod01
 interface m01_sub
  module procedure m01_sub01, m01_sub02, m01_sub03
 end interface
 contains
  function m01_func01() result(m01_rst01)
   integer :: m01_rst01
   m01_rst01 = 1
  end function
  function m01_func02() result(m01_rst02)
   integer :: m01_rst02
   m01_rst02 = 2
  end function
  subroutine m01_sub01(m01_s01_arg01)
   type ty01
    sequence
    integer :: i01
    procedure(integer), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s01_arg01
  end subroutine
  subroutine m01_sub02(m01_s02_arg01)
   type ty01
    sequence
    integer :: i01
    procedure(real), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s02_arg01
  end subroutine
  subroutine m01_sub03(m01_s03_arg01)
   type ty01
    sequence
    integer :: i01
    procedure(complex), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s03_arg01
  end subroutine
end module

module mod02
 interface m02_sub
  module procedure m02_sub01, m02_sub02, m02_sub03, m02_sub04
 end interface
 contains
  subroutine m02_sub01(m02_s01_arg01)
   type ty02
    sequence
    procedure(integer(kind = 1)), pointer, nopass :: pr_pn02
   end type
   type (ty02) :: m02_s01_arg01
  end subroutine
  subroutine m02_sub02(m02_s02_arg01)
   type ty02
    sequence
    procedure(integer(kind = 2)), pointer, nopass :: pr_pn02
   end type
   type (ty02) :: m02_s02_arg01
  end subroutine
  subroutine m02_sub03(m02_s03_arg01)
   type ty02
    sequence
    procedure(integer(kind = 4)), pointer, nopass :: pr_pn02
   end type
   type (ty02) :: m02_s03_arg01
  end subroutine
  subroutine m02_sub04(m02_s04_arg01)
   type ty02
    sequence
    procedure(integer(kind = 8)), pointer, nopass :: pr_pn02
   end type
   type (ty02) :: m02_s04_arg01
  end subroutine
end module

module mod03
 interface m03_sub
  module procedure m03_sub01, m03_sub02, m03_sub03
 end interface
 contains
  subroutine m03_sub01(m03_s01_arg01)
   type ty03
    sequence
    procedure(real(kind = 4 )), pointer, nopass :: pr_pn03
   end type
   type (ty03) :: m03_s01_arg01
  end subroutine
  subroutine m03_sub02(m03_s02_arg01)
   type ty03
    sequence
    procedure(real(kind = 8 )), pointer, nopass :: pr_pn03
   end type
   type (ty03) :: m03_s02_arg01
  end subroutine
  subroutine m03_sub03(m03_s03_arg01)
   type ty03
    sequence
    procedure(real(kind = 16)), pointer, nopass :: pr_pn03
   end type
   type (ty03) :: m03_s03_arg01
  end subroutine
end module

module mod04
 interface m04_sub
  module procedure m04_sub01, m04_sub02, m04_sub03
 end interface
 contains
  subroutine m04_sub01(m04_s01_arg01)
   type ty04
    sequence
    procedure(complex(kind = 4 )), pointer, nopass :: pr_pn04
   end type
   type (ty04) :: m04_s01_arg01
  end subroutine
  subroutine m04_sub02(m04_s02_arg01)
   type ty04
    sequence
    procedure(complex(kind = 8 )), pointer, nopass :: pr_pn04
   end type
   type (ty04) :: m04_s02_arg01
  end subroutine
  subroutine m04_sub03(m04_s03_arg01)
   type ty04
    sequence
    procedure(complex(kind = 16)), pointer, nopass :: pr_pn04
   end type
   type (ty04) :: m04_s03_arg01
  end subroutine
end module

use mod01
use mod02
use mod03
use mod04

type ty01
 sequence
 integer :: i01
 procedure(integer), pointer, nopass :: pr_pn01
end type

type ty02
 sequence
 procedure(integer(kind = 1)), pointer, nopass :: pr_pn02
end type

type ty03
 sequence
 procedure(real(kind = 4 )), pointer, nopass :: pr_pn03
end type

type ty04
 sequence
 procedure(complex(kind = 4 )), pointer, nopass :: pr_pn04
end type

type (ty01) :: t01
type (ty02) :: t02
type (ty03) :: t03
type (ty04) :: t04

call m01_sub(t01)
call m02_sub(t02)
call m03_sub(t03)
call m04_sub(t04)

print *,'pass'

end
