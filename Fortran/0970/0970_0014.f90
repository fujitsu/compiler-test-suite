module mod01

 interface operator(.singleA.)
  procedure ifunc01
 end interface
 interface operator(.singleB.)
  procedure ifunc02
 end interface
 interface operator (.dualA.)
  procedure ifunc03
 end interface
 interface operator (.dualB.)
  procedure ifunc04
 end interface
 interface operator(*)
  procedure ifunc05
 end interface
 interface operator(/)
  procedure ifunc06
 end interface

 contains

  function m01_func01() result(m01_rst01)
   integer :: m01_rst01
   entry m01_ent01() result(m01_rst01)
   m01_rst01 = 1
  end function

  function m01_func02(m01_f02_arg01) result(m01_rst02)
   integer                  :: m01_f02_arg01
   character(m01_f02_arg01) :: m01_rst02
   entry m01_ent02(m01_f02_arg01) result(m01_rst02)
   m01_rst02 = 'parm'
  end function

  function m01_func03(m01_f03_arg01, m01_f03_arg02) result(m01_rst03)
   integer :: m01_f03_arg01
   integer :: m01_f03_arg02
   integer :: m01_rst03
   entry m01_ent03(m01_f03_arg01, m01_f03_arg02) result(m01_rst03)
   m01_rst03 = m01_f03_arg01 + m01_f03_arg02
  end function

  function ifunc01(if01_arg01) result(irst01)
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
   type (ty02), intent(in) :: if01_arg01
   type (ty03)             :: irst01
  end function

  function ifunc02(if02_arg01) result(irst02)
   type ty02
    sequence
    integer :: ii_02 = 2
    procedure(m01_ent02), pointer, nopass :: pr_pn02 => null()
   end type
   type ty03
    sequence
    integer :: ii_03 = 3
    procedure(m01_ent03), pointer, nopass :: pr_pn03 => null()
   end type
   type (ty02), intent(in) :: if02_arg01
   type (ty03)             :: irst02
  end function

  function ifunc03(if03_arg01, if03_arg02) result(irst03)
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
   type (ty01), intent(in) :: if03_arg01
   type (ty02), intent(in) :: if03_arg02
   type (ty03)             :: irst03
  end function

  function ifunc04(if04_arg01, if04_arg02) result(irst04)
   type ty01
    sequence
    integer :: ii_01 = 1
    procedure(m01_ent01), pointer, nopass :: pr_pn01 => null()
   end type
   type ty02
    sequence
    integer :: ii_02 = 2
    procedure(m01_ent02), pointer, nopass :: pr_pn02 => null()
   end type
   type ty03
    sequence
    integer :: ii_03 = 3
    procedure(m01_ent03), pointer, nopass :: pr_pn03 => null()
   end type
   type (ty01), intent(in) :: if04_arg01
   type (ty02), intent(in) :: if04_arg02
   type (ty03)             :: irst04
  end function

  function ifunc05(if05_arg01, if05_arg02) result(irst05)
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
   type (ty01), intent(in) :: if05_arg01
   type (ty02), intent(in) :: if05_arg02
   type (ty03)             :: irst05
  end function

  function ifunc06(if06_arg01, if06_arg02) result(irst06)
   type ty01
    sequence
    integer :: ii_01 = 1
    procedure(m01_ent01), pointer, nopass :: pr_pn01 => null()
   end type
   type ty02
    sequence
    integer :: ii_02 = 2
    procedure(m01_ent02), pointer, nopass :: pr_pn02 => null()
   end type
   type ty03
    sequence
    integer :: ii_03 = 3
    procedure(m01_ent03), pointer, nopass :: pr_pn03 => null()
   end type
   type (ty01), intent(in) :: if06_arg01
   type (ty02), intent(in) :: if06_arg02
   type (ty03)             :: irst06
  end function

  subroutine m01_sub01()
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

   type (ty01) :: t01
   type (ty02) :: t02
   type (ty03) :: t03

   t03 = .singleA.t02
   t03 = .singleB.t02

   t03 = t01.dualA.t02
   t03 = t01.dualB.t02

   t03 = t01 * t02
   t03 = t01 / t02

  end subroutine

  subroutine m01_sub02()
   type ty01
    sequence
    integer :: ii_01 = 1
    procedure(m01_ent01), pointer, nopass :: pr_pn01 => null()
   end type
   type ty02
    sequence
    integer :: ii_02 = 2
    procedure(m01_ent02), pointer, nopass :: pr_pn02 => null()
   end type
   type ty03
    sequence
    integer :: ii_03 = 3
    procedure(m01_ent03), pointer, nopass :: pr_pn03 => null()
   end type

   type (ty01) :: t01
   type (ty02) :: t02
   type (ty03) :: t03

   t03 = .singleA.t02
   t03 = .singleB.t02

   t03 = t01.dualA.t02
   t03 = t01.dualB.t02

   t03 = t01 * t02
   t03 = t01 / t02

  end subroutine

end module

print *,'pass'

end
