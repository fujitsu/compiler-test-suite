module mod01
 contains
 function m01_func01(m01_f01_arg01) result(m01_rst01)
  character(4) :: m01_rst01
  m01_rst01 = 'pass'
 end function
end module

use mod01

interface ifunc
 function ifunc01(if01_arg01) result(irst01)
  use mod01
  type ty01
   sequence
   integer                                :: i01
   procedure(m01_func01), pointer, nopass :: pr_pn01
  end type
  type (ty01) :: if01_arg01
  character(:), allocatable :: irst01
 end function
end interface

type ty01
 sequence
 integer                                :: i01
 procedure(m01_func01), pointer, nopass :: pr_pn01
end type

type (ty01) :: t01

t01 = ty01(4, m01_func01)

print *,ifunc01(t01)

end

function ifunc01(if01_arg01) result(irst01)
 use mod01
 type ty01
  sequence
  integer                                :: i01
  procedure(m01_func01), pointer, nopass :: pr_pn01
 end type
 type (ty01) :: if01_arg01
 character(:), allocatable :: irst01
 allocate(irst01, source = if01_arg01%pr_pn01(if01_arg01%i01))
end function
