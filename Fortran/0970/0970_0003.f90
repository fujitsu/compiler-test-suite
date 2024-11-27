
module mod01
 contains
  function m01_func(m01_arg01, m01_arg02, m01_arg03) result(m01_rst)
   integer :: m01_arg01, m01_arg02, m01_arg03
   integer :: m01_rst
   entry m01_ent(m01_arg01, m01_arg02, m01_arg03) result(m01_rst)
   m01_rst = m01_arg01 + m01_arg02 * m01_arg03
  end function

  function m01_func01(m01_arg01, m01_arg02, m01_arg03_) result(m01_rst)
   integer :: m01_arg01, m01_arg02, m01_arg03_
   integer :: m01_rst
   entry m01_ent01(m01_arg01, m01_arg02, m01_arg03_) result(m01_rst)
   m01_rst = m01_arg01 + m01_arg02 * m01_arg03_
  end function

  function m01_func02(m01_arg01, m01_arg02, m01_arg03) result(m01_rst)
   integer :: m01_arg01, m01_arg02, m01_arg03
   integer :: m01_rst
   entry m01_ent02(m01_arg01, m01_arg02, m01_arg03) result(m01_rst)
   m01_rst = m01_arg01 * m01_arg02 * m01_arg03
  end function

  function m01_func03(m01_arg01, m01_arg02, m01_arg033) result(m01_rst)
   integer :: m01_arg01, m01_arg02, m01_arg033
   integer :: m01_rst
   entry m01_ent03(m01_arg01, m01_arg02, m01_arg033) result(m01_rst)
   m01_rst = m01_arg01 + m01_arg02 * m01_arg033
  end function

  subroutine m01_sub0A(m01_s0A_arg01)
   type ty01
    sequence
    procedure(m01_func),   pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s0A_arg01
  end subroutine

  subroutine m01_sub0B(m01_s0B_arg01)
   type ty01
    sequence
    procedure(m01_ent),    pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s0B_arg01
  end subroutine

  subroutine m01_sub01()
   type ty01
    sequence
    procedure(m01_func01), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: t01
   call m01_sub0A(t01)
   call m01_sub0B(t01)
  end subroutine

  subroutine m01_sub02()
   type ty01
    sequence
    procedure(m01_func02), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: t01
   call m01_sub0A(t01)
   call m01_sub0B(t01)
  end subroutine

  subroutine m01_sub03()
   type ty01
    sequence
    procedure(m01_func03), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: t01
   call m01_sub0A(t01)
   call m01_sub0B(t01)
  end subroutine

  subroutine m01_sub04()
   type ty01
    sequence
    procedure(m01_ent01),  pointer, nopass :: pr_pn01
   end type
   type (ty01) :: t01
   call m01_sub0A(t01)
   call m01_sub0B(t01)
  end subroutine

  subroutine m01_sub05()
   type ty01
    sequence
    procedure(m01_ent02),  pointer, nopass :: pr_pn01
   end type
   type (ty01) :: t01
   call m01_sub0A(t01)
   call m01_sub0B(t01)
  end subroutine

  subroutine m01_sub06()
   type ty01
    sequence
    procedure(m01_ent03),  pointer, nopass :: pr_pn01
   end type
   type (ty01) :: t01
   call m01_sub0A(t01)
   call m01_sub0B(t01)
  end subroutine

end module

use mod01



print *,'pass'

end
