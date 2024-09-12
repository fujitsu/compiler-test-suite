module mod01
 type ty01
  sequence
  procedure(m01_func01), pointer, nopass :: pr_pn01
 end type
 contains
  function m01_func01() result(m01_rst01)
  end function
end module

use mod01, tym01 => ty01

interface assignment(=)
 subroutine isub01(is01_arg01, is01_arg02)
  use mod01, tym01 => ty01
  type ty01
   sequence
   procedure(m01_func01), pointer, nopass :: pr_pn01
  end type
  type (tym01), intent(out) :: is01_arg01
  type (ty01),  intent(in)  :: is01_arg02
 end subroutine
end interface

type ty01
 sequence
 procedure(m01_func01), pointer, nopass :: pr_pn01
end type

type (ty01)  :: t01
type (tym01) :: tm01

tm01 = t01

print *,'pass'

end

subroutine isub01(is01_arg01, is01_arg02)
 use mod01, tym01 => ty01
 type ty01
  sequence
  procedure(m01_func01), pointer, nopass :: pr_pn01
 end type
 type (tym01), intent(out) :: is01_arg01
 type (ty01),  intent(in)  :: is01_arg02
end subroutine
