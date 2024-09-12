module mod01
 contains
  function m01_func01() result(m01_rst01)
   integer :: m01_rst01
   entry m01_ent01() result(m01_rst01)
   m01_rst01 = 1
  end function
end module

module mod02
 contains
  function m02_func01() result(m02_rst01)
   integer :: m02_rst01
   entry m02_ent01() result(m02_rst01)
   m02_rst01 = 2
  end function
  subroutine m02_sub01()
   type ty01
    sequence
    procedure(m02_func01), pointer, nopass :: pr_pn01
   end type
   type ty02
    sequence
    procedure(m02_ent01), pointer, nopass :: pr_pn02
   end type
   type (ty01) :: t01
   type (ty02) :: t02
   call m02_s01_csub01(t01)
   call m02_s01_csub02(t02)
   call m02_sub02(t01)
   call m02_sub03(t02)
   contains
    subroutine m02_s01_csub01(m02_s01_cs01_arg01)
     type ty01
      sequence
      procedure(m02_ent01), pointer, nopass :: pr_pn01
     end type
     type (ty01) :: m02_s01_cs01_arg01
    end subroutine
    subroutine m02_s01_csub02(m02_s01_cs02_arg01)
     type ty02
      sequence
      procedure(m02_func01), pointer, nopass :: pr_pn02
     end type
     type (ty02) :: m02_s01_cs02_arg01
    end subroutine
  end subroutine
  subroutine m02_sub02(m02_s02_arg01)
   type ty01
    sequence
    procedure(m02_ent01), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m02_s02_arg01
  end subroutine
  subroutine m02_sub03(m02_s03_arg01)
   type ty02
    sequence
    procedure(m02_func01), pointer, nopass :: pr_pn02
   end type
   type (ty02) :: m02_s03_arg01
  end subroutine
end module

use mod01

type ty01
 sequence
 procedure(m01_ent01), pointer, nopass :: pr_pn01
end type

type ty02
 sequence
 procedure(m01_func01), pointer, nopass :: pr_pn02
end type

type (ty01) :: t01
type (ty02) :: t02

call csub01(t01)

call csub02(t02)

print *,'pass'

contains

 subroutine csub01(cs01_arg01)
  type ty01
   sequence
   procedure(m01_func01), pointer, nopass :: pr_pn01
  end type
  type (ty01) :: cs01_arg01
 end subroutine

 subroutine csub02(cs02_arg01)
  type ty02
   sequence
   procedure(m01_ent01), pointer, nopass :: pr_pn02
  end type
  type (ty02) :: cs02_arg01
 end subroutine

end
