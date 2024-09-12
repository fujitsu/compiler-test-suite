module mod01
 contains
  function m01_func01() result(m01_rst01)
   integer :: m01_rst01
   entry m01_ent01() result(m01_rst01)
   m01_rst01 = 1
  end function
  function m01_func02() result(m01_rst01)
   integer :: m01_rst01
   entry m01_ent02() result(m01_rst01)
   m01_rst01 = 1
  end function
  subroutine m01_sub01()
   type ty01
    sequence
    procedure(m01_ent01), pointer, nopass :: pr_pn01
   end type
   type (ty01) :: t01
   call m01_s01_csub01(t01)
   call m01_s01_csub02(t01)
   call m01_s01_csub03(t01)
   call m01_s01_csub04(t01)
   contains
    subroutine m01_s01_csub01(m01_s01_cs01_arg01)
     type ty01
      sequence
      procedure(m01_func01), pointer, nopass :: pr_pn01
     end type
     type (ty01) :: m01_s01_cs01_arg01
    end subroutine
    subroutine m01_s01_csub02(m01_s01_cs02_arg01)
     type ty01
      sequence
      procedure(m01_ent01), pointer, nopass :: pr_pn01
     end type
     type (ty01) :: m01_s01_cs02_arg01
    end subroutine
    subroutine m01_s01_csub03(m01_s01_cs03_arg01)
     type ty01
      sequence
      procedure(m01_func02), pointer, nopass :: pr_pn01
     end type
     type (ty01) :: m01_s01_cs03_arg01
    end subroutine
    subroutine m01_s01_csub04(m01_s01_cs04_arg01)
     type ty01
      sequence
      procedure(m01_ent02), pointer, nopass :: pr_pn01
     end type
     type (ty01) :: m01_s01_cs04_arg01
    end subroutine
  end subroutine
  subroutine m01_sub02()
   type ty02
    sequence
    procedure(m01_func01), pointer, nopass :: pr_pn02
   end type
   type (ty02) :: t02
   call m01_s02_csub01(t02)
   call m01_s02_csub02(t02)
   call m01_s02_csub03(t02)
   call m01_s02_csub04(t02)
   contains
    subroutine m01_s02_csub01(m01_s02_cs01_arg01)
     type ty02
      sequence
      procedure(m01_func01), pointer, nopass :: pr_pn02
     end type
     type (ty02) :: m01_s02_cs01_arg01
    end subroutine
    subroutine m01_s02_csub02(m01_s02_cs02_arg01)
     type ty02
      sequence
      procedure(m01_ent01), pointer, nopass :: pr_pn02
     end type
     type (ty02) :: m01_s02_cs02_arg01
    end subroutine
    subroutine m01_s02_csub03(m01_s02_cs03_arg01)
     type ty02
      sequence
      procedure(m01_func02), pointer, nopass :: pr_pn02
     end type
     type (ty02) :: m01_s02_cs03_arg01
    end subroutine
    subroutine m01_s02_csub04(m01_s02_cs04_arg01)
     type ty02
      sequence
      procedure(m01_ent02), pointer, nopass :: pr_pn02
     end type
     type (ty02) :: m01_s02_cs04_arg01
    end subroutine
  end subroutine
  subroutine m01_sub03()
   type ty03
    sequence
    procedure(m01_ent02), pointer, nopass :: pr_pn03
   end type
   type (ty03) :: t03
   call m01_s03_csub01(t03)
   call m01_s03_csub02(t03)
   call m01_s03_csub03(t03)
   call m01_s03_csub04(t03)
   contains
    subroutine m01_s03_csub01(m01_s03_cs01_arg01)
     type ty03
      sequence
      procedure(m01_func01), pointer, nopass :: pr_pn03
     end type
     type (ty03) :: m01_s03_cs01_arg01
    end subroutine
    subroutine m01_s03_csub02(m01_s03_cs02_arg01)
     type ty03
      sequence
      procedure(m01_ent01), pointer, nopass :: pr_pn03
     end type
     type (ty03) :: m01_s03_cs02_arg01
    end subroutine
    subroutine m01_s03_csub03(m01_s03_cs03_arg01)
     type ty03
      sequence
      procedure(m01_func02), pointer, nopass :: pr_pn03
     end type
     type (ty03) :: m01_s03_cs03_arg01
    end subroutine
    subroutine m01_s03_csub04(m01_s03_cs04_arg01)
     type ty03
      sequence
      procedure(m01_ent02), pointer, nopass :: pr_pn03
     end type
     type (ty03) :: m01_s03_cs04_arg01
    end subroutine
  end subroutine
  subroutine m01_sub04()
   type ty04
    sequence
    procedure(m01_func02), pointer, nopass :: pr_pn04
   end type
   type (ty04) :: t04
   call m01_s04_csub01(t04)
   call m01_s04_csub02(t04)
   call m01_s04_csub03(t04)
   call m01_s04_csub04(t04)
   contains
    subroutine m01_s04_csub01(m01_s04_cs01_arg01)
     type ty04
      sequence
      procedure(m01_func01), pointer, nopass :: pr_pn04
     end type
     type (ty04) :: m01_s04_cs01_arg01
    end subroutine
    subroutine m01_s04_csub02(m01_s04_cs02_arg01)
     type ty04
      sequence
      procedure(m01_ent01), pointer, nopass :: pr_pn04
     end type
     type (ty04) :: m01_s04_cs02_arg01
    end subroutine
    subroutine m01_s04_csub03(m01_s04_cs03_arg01)
     type ty04
      sequence
      procedure(m01_func02), pointer, nopass :: pr_pn04
     end type
     type (ty04) :: m01_s04_cs03_arg01
    end subroutine
    subroutine m01_s04_csub04(m01_s04_cs04_arg01)
     type ty04
      sequence
      procedure(m01_ent02), pointer, nopass :: pr_pn04
     end type
     type (ty04) :: m01_s04_cs04_arg01
    end subroutine
  end subroutine
end module

print *,'pass'

end
