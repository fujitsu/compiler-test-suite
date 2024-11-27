module mod01
 interface
  subroutine isub01()
  end subroutine
 end interface
 contains
  subroutine m01_sub(m01_s_arg01)
   type ty01
    procedure(isub01), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s_arg01
   entry m01_ent(m01_s_arg01)
  end subroutine

  subroutine m01_sub01(m01_s_arg01)
   type ty01
    sequence
    procedure(m01_sub01), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s_arg01
   entry m01_ent01(m01_s_arg01)
   call m01_sub05(m01_s_arg01)
   call m01_sub06(m01_s_arg01)
   call m01_ent05(m01_s_arg01)
   call m01_ent06(m01_s_arg01)
  end subroutine

  subroutine m01_sub02(m01_s_arg01)
   type ty01
    sequence
    procedure(m01_ent02), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s_arg01
   entry m01_ent02(m01_s_arg01)
   call m01_sub05(m01_s_arg01)
   call m01_sub06(m01_s_arg01)
   call m01_ent05(m01_s_arg01)
   call m01_ent06(m01_s_arg01)
  end subroutine

  subroutine m01_sub03(m01_s_arg01)
   type ty01
    sequence
    procedure(m01_sub03), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s_arg01
   entry m01_ent03(m01_s_arg01)
   call m01_sub05(m01_s_arg01)
   call m01_sub06(m01_s_arg01)
   call m01_ent05(m01_s_arg01)
   call m01_ent06(m01_s_arg01)
  end subroutine

  subroutine m01_sub04(m01_s_arg01)
   type ty01
    sequence
    procedure(m01_ent04), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s_arg01
   entry m01_ent04(m01_s_arg01)
   call m01_sub05(m01_s_arg01)
   call m01_sub06(m01_s_arg01)
   call m01_ent05(m01_s_arg01)
   call m01_ent06(m01_s_arg01)
  end subroutine

  subroutine m01_sub05(m01_s_arg01)
   type ty01
    sequence
    procedure(m01_sub), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s_arg01
   entry m01_ent05(m01_s_arg01)
   call m01_sub01(m01_s_arg01)
   call m01_sub02(m01_s_arg01)
   call m01_sub03(m01_s_arg01)
   call m01_sub04(m01_s_arg01)
   call m01_sub06(m01_s_arg01)
   call m01_ent01(m01_s_arg01)
   call m01_ent02(m01_s_arg01)
   call m01_ent03(m01_s_arg01)
   call m01_ent04(m01_s_arg01)
   call m01_ent06(m01_s_arg01)
  end subroutine

  subroutine m01_sub06(m01_s_arg01)
   type ty01
    sequence
    procedure(m01_ent), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: m01_s_arg01
   entry m01_ent06(m01_s_arg01)
   call m01_sub01(m01_s_arg01)
   call m01_sub02(m01_s_arg01)
   call m01_sub03(m01_s_arg01)
   call m01_sub04(m01_s_arg01)
   call m01_sub05(m01_s_arg01)
   call m01_ent01(m01_s_arg01)
   call m01_ent02(m01_s_arg01)
   call m01_ent03(m01_s_arg01)
   call m01_ent04(m01_s_arg01)
   call m01_ent05(m01_s_arg01)
  end subroutine

end module

end
