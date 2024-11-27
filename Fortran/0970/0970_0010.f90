
module mod01
 type ty01
  sequence
  procedure(m01_func), pointer, nopass :: pr_pn01
 end type
 contains
  function m01_func() result(m01_rst)
   character(:), allocatable :: m01_rst
   allocate(character(4) :: m01_rst)
  end function
  subroutine m01_sub01(m01_s01_arg01)
   type ty01
    sequence
    procedure(m01_func), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s01_arg01
  end subroutine
  function m01_func01() result(m01_rst01)
   type ty01
    sequence
    procedure(m01_func), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_rst01
   m01_rst01 = ty01(m01_func)
  end function
end module

use mod01, mty01 => ty01

type ty01
 sequence
 procedure(m01_func), pointer, nopass :: pr_pn01
end type

type (mty01) :: mt01_01
type ( ty01) ::  t01_01

mt01_01 = t01_01
t01_01  = mt01_01

end
