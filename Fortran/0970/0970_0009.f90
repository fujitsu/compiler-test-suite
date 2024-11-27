module mod01
 type ty01
  sequence
  integer :: ii_01 = 1
  procedure(m01_func01), pointer, nopass :: pr_pn01 => null()
 end type
 type ty02
  sequence
  integer :: ii_02 = 2
  procedure(m01_func02), pointer, nopass :: pr_pn02 => null()
 end type
 type ty03
  sequence
  integer :: ii_03 = 3
  procedure(m01_func03), pointer, nopass :: pr_pn03 => null()
 end type
 contains
  function m01_func01() result(m01_rst01)
   character(4), allocatable :: m01_rst01
   m01_rst01 = 'pass'
  end function
  function m01_func02(m01_f02_arg01) result(m01_rst02)
   integer :: m01_f02_arg01
   character(m01_f02_arg01), allocatable :: m01_rst02
   m01_rst02 = 'pass'
  end function
  function m01_func03(m01_f03_arg01, m01_f03_arg02) result(m01_rst03)
   integer :: m01_f03_arg01
   integer :: m01_f03_arg02
   integer :: m01_rst03
   m01_rst03 = m01_f03_arg01 + m01_f03_arg02
  end function
end module

use mod01, mty01 => ty01, mty02 => ty02, mty03 => ty03

interface operator(.single.)
 function ifunc01(if01_arg01) result(irst01)
  use mod01
  type (ty02), intent(in) :: if01_arg01
  type (ty03)             :: irst01
 end function
end interface
interface operator (.dual.)
 function ifunc02(if02_arg01, if02_arg02) result(irst02)
  use mod01
  type (ty01), intent(in) :: if02_arg01
  type (ty02), intent(in) :: if02_arg02
  type (ty03)             :: irst02
 end function
end interface
interface operator(/)
 function ifunc03(if03_arg01, if03_arg02) result(irst03)
  use mod01
  type (ty01), intent(in) :: if03_arg01
  type (ty02), intent(in) :: if03_arg02
  type (ty03)             :: irst03
 end function
end interface

type ty01
 sequence
 integer :: ii_01 = 1
 procedure(m01_func01), pointer, nopass :: pr_pn01 => null()
end type
type ty02
 sequence
 integer :: ii_02 = 2
 procedure(m01_func02), pointer, nopass :: pr_pn02 => null()
end type
type ty03
 sequence
 integer :: ii_03 = 3
 procedure(m01_func03), pointer, nopass :: pr_pn03 => null()
end type
type (ty01) :: t01_01
type (ty02) :: t02_01
type (ty03) :: t03_01

t03_01 =       .single.t02_01
t03_01 = t01_01.dual.  t02_01
t03_01 = t01_01   /    t02_01

end

function ifunc01(if01_arg01) result(irst01)
 use mod01
 type (ty02), intent(in) :: if01_arg01
 type (ty03)             :: irst01
 irst01%ii_03 = if01_arg01%ii_02
end function

function ifunc02(if02_arg01, if02_arg02) result(irst02)
 use mod01
 type (ty01), intent(in) :: if02_arg01
 type (ty02), intent(in) :: if02_arg02
 type (ty03)             :: irst02
 irst02%ii_03 = if02_arg01%ii_01 + if02_arg02%ii_02
end function

function ifunc03(if03_arg01, if03_arg02) result(irst03)
 use mod01
 type (ty01), intent(in) :: if03_arg01
 type (ty02), intent(in) :: if03_arg02
 type (ty03)             :: irst03
 irst03%ii_03 = if03_arg01%ii_01 + if03_arg02%ii_02
end function
