module mod01
 interface assignment(=)
  procedure m01_sub
 end interface
  contains
   subroutine m01_sub(m01_s_arg01, m01_s_arg02)
    type ty01
     sequence
     procedure(m01_func01), pointer, nopass :: pr_pn01 => null()
    end type
    type ty02
     sequence
     procedure(m01_func02), pointer, nopass :: pr_pn02 => null()
    end type
    type (ty01), intent(out) :: m01_s_arg01
    type (ty02), intent(in ) :: m01_s_arg02
    m01_s_arg01%pr_pn01 => m01_s_arg02%pr_pn02
   end subroutine

   function m01_func01(m01_f01_arg01) result(m01_rst01)
    integer                  :: m01_f01_arg01
    character(m01_f01_arg01) :: m01_rst01
    entry m01_ent01(m01_f01_arg01) result(m01_rst01)
    m01_rst01 = 'pass'
   end function

   function m01_func02(m01_f02_arg01) result(m01_rst02)
    integer                  :: m01_f02_arg01
    character(m01_f02_arg01) :: m01_rst02
    entry m01_ent02(m01_f02_arg01) result(m01_rst02)
    m01_rst02 = 'pass'
   end function

   subroutine m01_sub01()
    type ty01
     sequence
     procedure(m01_func01), pointer, nopass :: pr_pn01 => null()
    end type
    type ty02
     sequence
     procedure(m01_func01), pointer, nopass :: pr_pn02 => null()
    end type
    type (ty01) :: t01
    type (ty02) :: t02
    t01 = t02
   end subroutine

   subroutine m01_sub02()
    type ty01
     sequence
     procedure(m01_ent01), pointer, nopass :: pr_pn01 => null()
    end type
    type ty02
     sequence
     procedure(m01_ent01), pointer, nopass :: pr_pn02 => null()
    end type
    type (ty01) :: t01
    type (ty02) :: t02
    t01 = t02
   end subroutine

end module


module mod02
 interface assignment(=)
  procedure m02_sub
 end interface
  contains
   subroutine m02_sub(m02_s_arg01, m02_s_arg02)
    type ty01
     sequence
     procedure(m02_ent01), pointer, nopass :: pr_pn01 => null()
    end type
    type ty02
     sequence
     procedure(m02_ent02), pointer, nopass :: pr_pn02 => null()
    end type
    type (ty01), intent(out) :: m02_s_arg01
    type (ty02), intent(in ) :: m02_s_arg02
    m02_s_arg01%pr_pn01 => m02_s_arg02%pr_pn02
   end subroutine

   function m02_func01(m02_f01_arg01) result(m02_rst01)
    integer                  :: m02_f01_arg01
    character(m02_f01_arg01) :: m02_rst01
    entry m02_ent01(m02_f01_arg01) result(m02_rst01)
    m02_rst01 = 'pass'
   end function

   function m02_func02(m02_f02_arg01) result(m02_rst02)
    integer                  :: m02_f02_arg01
    character(m02_f02_arg01) :: m02_rst02
    entry m02_ent02(m02_f02_arg01) result(m02_rst02)
    m02_rst02 = 'pass'
   end function

   subroutine m02_sub01()
    type ty01
     sequence
     procedure(m02_func01), pointer, nopass :: pr_pn01 => null()
    end type
    type ty02
     sequence
     procedure(m02_func01), pointer, nopass :: pr_pn02 => null()
    end type
    type (ty01) :: t01
    type (ty02) :: t02
    t01 = t02
   end subroutine

   subroutine m02_sub02()
    type ty01
     sequence
     procedure(m02_ent01), pointer, nopass :: pr_pn01 => null()
    end type
    type ty02
     sequence
     procedure(m02_ent01), pointer, nopass :: pr_pn02 => null()
    end type
    type (ty01) :: t01
    type (ty02) :: t02
    t01 = t02
   end subroutine
end module

print *,'pass'

end
