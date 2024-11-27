module mod01
 type ty01
  sequence
  procedure(m01_func), pointer, nopass :: pr_pn01
 end type
 contains
  function m01_func() result(m01_rst)
   character(:), allocatable :: m01_rst
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
