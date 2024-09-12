module mod01
 contains
  function m01_func01() result(m01_rst01)
   real    :: m01_rst01
   entry m01_ent01() result(m01_rst01)
   m01_rst01 = 1
  end function
  function m01_func02() result(m01_rst02)
   real    :: m01_rst02
   entry m01_ent02() result(m01_rst02)
   m01_rst02 = 1
  end function
  subroutine m01_sub01()
   entry m01_ent03()
  end subroutine
  subroutine m01_sub02(m01_s02_arg01)
   real    :: m01_s02_arg01
   entry m01_ent04(m01_s02_arg01)
  end subroutine
  subroutine m01_sub0A()
   type ty01
    sequence
    procedure(m01_func01), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s0A_var01
   call sub01(m01_s0A_var01)
   call sub02(m01_s0A_var01)
   call sub03(m01_s0A_var01)
   call sub04(m01_s0A_var01)
   call sub05(m01_s0A_var01)
   call sub06(m01_s0A_var01)
   call sub07(m01_s0A_var01)
   call sub08(m01_s0A_var01)
  end subroutine
  subroutine m01_sub0B()
   type ty01
    sequence
    procedure(m01_ent01), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s0B_var01
   call sub01(m01_s0B_var01)
   call sub02(m01_s0B_var01)
   call sub03(m01_s0B_var01)
   call sub04(m01_s0B_var01)
   call sub05(m01_s0B_var01)
   call sub06(m01_s0B_var01)
   call sub07(m01_s0B_var01)
   call sub08(m01_s0B_var01)
  end subroutine
  subroutine m01_sub0C()
   type ty01
    sequence
    procedure(m01_func02), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s0C_var01
   call sub01(m01_s0C_var01)
   call sub02(m01_s0C_var01)
   call sub03(m01_s0C_var01)
   call sub04(m01_s0C_var01)
   call sub05(m01_s0C_var01)
   call sub06(m01_s0C_var01)
   call sub07(m01_s0C_var01)
   call sub08(m01_s0C_var01)
  end subroutine
  subroutine m01_sub0D()
   type ty01
    sequence
    procedure(m01_ent02), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s0D_var01
   call sub01(m01_s0D_var01)
   call sub02(m01_s0D_var01)
   call sub03(m01_s0D_var01)
   call sub04(m01_s0D_var01)
   call sub05(m01_s0D_var01)
   call sub06(m01_s0D_var01)
   call sub07(m01_s0D_var01)
   call sub08(m01_s0D_var01)
  end subroutine
  subroutine m01_sub0E()
   type ty01
    sequence
    procedure(m01_sub01), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s0E_var01
   call sub01(m01_s0E_var01)
   call sub02(m01_s0E_var01)
   call sub03(m01_s0E_var01)
   call sub04(m01_s0E_var01)
   call sub05(m01_s0E_var01)
   call sub06(m01_s0E_var01)
   call sub07(m01_s0E_var01)
   call sub08(m01_s0E_var01)
  end subroutine
  subroutine m01_sub0F()
   type ty01
    sequence
    procedure(m01_ent03), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s0F_var01
   call sub01(m01_s0F_var01)
   call sub02(m01_s0F_var01)
   call sub03(m01_s0F_var01)
   call sub04(m01_s0F_var01)
   call sub05(m01_s0F_var01)
   call sub06(m01_s0F_var01)
   call sub07(m01_s0F_var01)
   call sub08(m01_s0F_var01)
  end subroutine
  subroutine m01_sub0G()
   type ty01
    sequence
    procedure(m01_sub02), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s0G_var01
   call sub01(m01_s0G_var01)
   call sub02(m01_s0G_var01)
   call sub03(m01_s0G_var01)
   call sub04(m01_s0G_var01)
   call sub05(m01_s0G_var01)
   call sub06(m01_s0G_var01)
   call sub07(m01_s0G_var01)
   call sub08(m01_s0G_var01)
  end subroutine
  subroutine m01_sub0H()
   type ty01
    sequence
    procedure(m01_ent04), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s0H_var01
   call sub01(m01_s0H_var01)
   call sub02(m01_s0H_var01)
   call sub03(m01_s0H_var01)
   call sub04(m01_s0H_var01)
   call sub05(m01_s0H_var01)
   call sub06(m01_s0H_var01)
   call sub07(m01_s0H_var01)
   call sub08(m01_s0H_var01)
  end subroutine
end module

print *,'pass'

end

subroutine sub01(is01_arg01)
 use mod01
 type ty01
  sequence
  procedure(m01_func01), pointer, nopass :: pr_pn01
 end type
 type (ty01) :: is01_arg01
end subroutine

subroutine sub02(is02_arg01)
 use mod01
 type ty01
  sequence
  procedure(m01_ent01), pointer, nopass :: pr_pn01
 end type
 type (ty01) :: is02_arg01
end subroutine

subroutine sub03(is03_arg01)
 use mod01
 type ty01
  sequence
  procedure(m01_func02), pointer, nopass :: pr_pn01
 end type
 type (ty01) :: is03_arg01
end subroutine

subroutine sub04(is04_arg01)
 use mod01
 type ty01
  sequence
  procedure(m01_ent02), pointer, nopass :: pr_pn01
 end type
 type (ty01) :: is04_arg01
end subroutine

subroutine sub05(is05_arg01)
 use mod01
 type ty01
  sequence
  procedure(m01_sub01), pointer, nopass :: pr_pn01
 end type
 type (ty01) :: is05_arg01
end subroutine

subroutine sub06(is06_arg01)
 use mod01
 type ty01
  sequence
  procedure(m01_ent03), pointer, nopass :: pr_pn01
 end type
 type (ty01) :: is06_arg01
end subroutine

subroutine sub07(is07_arg01)
 use mod01
 type ty01
  sequence
  procedure(m01_sub02), pointer, nopass :: pr_pn01
 end type
 type (ty01) :: is07_arg01
end subroutine

subroutine sub08(is08_arg01)
 use mod01
 type ty01
  sequence
  procedure(m01_ent04), pointer, nopass :: pr_pn01
 end type
 type (ty01) :: is08_arg01
end subroutine
