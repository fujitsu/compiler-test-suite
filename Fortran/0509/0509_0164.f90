module mod01
 type ty01
  procedure(m01_func03), pointer, nopass :: pr_pn01
 end type
 contains
  function m01_func03() result(m01_rst03)
   character(:), allocatable :: m01_rst03
   allocate(character(4) :: m01_rst03)
   m01_rst03 = 'pass'
  end function
end module

use mod01
print *,'pass'
contains
 subroutine s( d )
  type (ty01) :: d
  if (d%pr_pn01()/='pass') print *,202
 end subroutine
end