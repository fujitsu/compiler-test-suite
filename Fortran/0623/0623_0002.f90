module mod01
 interface m01_subA
  procedure m01_sub01, m01_sub03
 end interface
 interface m01_subB
  procedure m01_sub02, m01_sub04
 end interface
 contains
  function m01_func01() result(m01_rst01)
   integer :: m01_rst01
   entry m01_ent01() result(m01_rst01)
   m01_rst01 = 1
  end function
  function m01_func02() result(m01_rst02)
   integer :: m01_rst02
   entry m01_ent02() result(m01_rst02)
   m01_rst02 = 2
  end function
  function m01_func03() result(m01_rst01)
   integer :: m01_rst01
   integer :: m01_rst02
   entry m01_ent03() result(m01_rst02)
   m01_rst01 = 3
   m01_rst02 = 4
  end function
  subroutine m01_sub0A()
   type ty01
    sequence
    procedure(m01_func01), pointer, nopass :: pr_pn01
   end type
   type ty02
    sequence
    procedure(m01_func02), pointer, nopass :: pr_pn02
   end type
   type (ty01) :: t01
   type (ty02) :: t02
   call m01_subA(t01)
   call m01_subB(t02)
   if (t01%pr_pn01().ne.1) print *,'m01_sub0A 001'
   if (t02%pr_pn02().ne.2) print *,'m01_sub0A 002'
  end subroutine
  subroutine m01_sub0B()
   type ty01
    sequence
    procedure(m01_ent01), pointer, nopass :: pr_pn01
   end type
   type ty02
    sequence
    procedure(m01_ent02), pointer, nopass :: pr_pn02
   end type
   type (ty01) :: t01
   type (ty02) :: t02
   call m01_subA(t01)
   call m01_subB(t02)
   if (t01%pr_pn01().ne.1) print *,'m01_sub0B 001'
   if (t02%pr_pn02().ne.2) print *,'m01_sub0B 002'
  end subroutine
  subroutine m01_sub0C()
   type ty01
    sequence
    procedure(m01_func03), pointer, nopass :: pr_pn01
   end type
   type ty02
    sequence
    procedure(m01_ent03),  pointer, nopass :: pr_pn02
   end type
   type (ty01) :: t01
   type (ty02) :: t02
   call m01_subA(t01)
   call m01_subB(t02)
   if (t01%pr_pn01().ne.1) print *,'m01_sub0C 001'
   if (t02%pr_pn02().ne.2) print *,'m01_sub0C 002'
  end subroutine
  subroutine m01_sub01(m01_s01_arg01)
   type ty01
    sequence
    procedure(m01_func01), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s01_arg01
   m01_s01_arg01 = ty01(m01_func01)
  end subroutine
  subroutine m01_sub02(m01_s02_arg01)
   type ty01
    sequence
    procedure(m01_ent01), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s02_arg01
   m01_s02_arg01 = ty01(m01_ent01)
  end subroutine
  subroutine m01_sub03(m01_s03_arg01)
   type ty02
    sequence
    procedure(m01_func02), pointer, nopass :: pr_pn02
   end type
   type (ty02) :: m01_s03_arg01
   m01_s03_arg01 = ty02(m01_func02)
  end subroutine
  subroutine m01_sub04(m01_s04_arg01)
   type ty02
    sequence
    procedure(m01_ent02), pointer, nopass :: pr_pn02
   end type
   type (ty02) :: m01_s04_arg01
   m01_s04_arg01 = ty02(m01_ent02)
  end subroutine
end module

use mod01

call m01_sub0A()
call m01_sub0B()
call m01_sub0C()

print *,'pass'

end
