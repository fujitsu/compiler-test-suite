
module mod01
 type ty01
  sequence
  procedure(m01_func03), pointer, nopass :: pr_pn01
 end type
 type (ty01) :: m01_t01
 contains
  subroutine m01_sub01(m01_s01_arg01)
   type (ty01) :: m01_s01_arg01
   m01_s01_arg01 = ty01(m01_func03)
  end subroutine
  subroutine m01_sub02(m01_s02_arg01)
   type ty01
    sequence
    procedure(m01_func03), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s02_arg01
   m01_s02_arg01 = ty01(m01_func03)
  end subroutine
  function m01_func01() result(m01_rst01)
   type (ty01) :: m01_rst01
   m01_rst01 = ty01(m01_func03)
  end function
  function m01_func02() result(m01_rst02)
   type ty01
    sequence
    procedure(m01_func03), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_rst02
   m01_rst02 = ty01(m01_func03)
  end function
  function m01_func03() result(m01_rst03)
   character(:), allocatable :: m01_rst03
   allocate(character(4) :: m01_rst03)
   m01_rst03 = 'pass'
  end function
end module

use mod01, ty02 => ty01

type ty01
 sequence
 procedure(m01_func03), pointer, nopass :: pr_pn01
end type

type (ty01) :: t01
type (ty01) :: t02

m01_t01 = m01_t01
m01_t01 = t01
m01_t01 = t02

m01_t01 = m01_func01()
m01_t01 = m01_func02()

m01_t01 = cfunc01()
m01_t01 = cfunc02()
m01_t01 = cfunc03()

t01     = m01_t01
t01     = t01
t01     = t02

t01     = m01_func01()
t01     = m01_func02()

t01     = cfunc01()
t01     = cfunc02()
t01     = cfunc03()

t02     = m01_t01
t02     = t01
t02     = t02

t02     = m01_func01()
t02     = m01_func02()

t02     = cfunc01()
t02     = cfunc02()
t02     = cfunc03()

call m01_sub01(m01_t01)
call m01_sub02(m01_t01)

call m01_sub01(t01)
call m01_sub02(t01)

call m01_sub01(t02)
call m01_sub02(t02)

call m01_sub01(m01_func01())
call m01_sub02(m01_func02())

call m01_sub01(cfunc01())
call m01_sub02(cfunc02())
call m01_sub01(cfunc03())

call csub01(m01_t01)
call csub02(m01_t01)
call csub03(m01_t01)

call csub01(t01)
call csub02(t01)
call csub03(t01)

call csub01(t02)
call csub02(t02)
call csub03(t02)

call csub01(m01_func01())
call csub02(m01_func02())
call csub03(m01_func01())

call csub01(cfunc01())
call csub02(cfunc02())
call csub03(cfunc01())

contains
 subroutine csub01(cs01_arg01)
  type (ty01) :: cs01_arg01
  cs01_arg01 = ty01(m01_func03)
 end subroutine
 subroutine csub02(cs02_arg01)
  type (ty02) :: cs02_arg01
  cs02_arg01 = ty02(m01_func03)
 end subroutine
 subroutine csub03(cs03_arg01)
  type ty01
   sequence
   procedure(m01_func03), pointer, nopass :: pr_pn01
  end type
  type (ty01) :: cs03_arg01
  cs03_arg01 = ty01(m01_func03)
 end subroutine
 function cfunc01() result(crst01)
  type (ty01) :: crst01
  crst01 = ty01(m01_func03)
 end function
 function cfunc02() result(crst02)
  type (ty02) :: crst02
  crst02 = ty02(m01_func03)
 end function
 function cfunc03() result(crst03)
  type ty01
   sequence
   procedure(m01_func03), pointer, nopass :: pr_pn01
  end type
  type (ty01) :: crst03
  crst03 = ty01(m01_func03)
 end function
end
