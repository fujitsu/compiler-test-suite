module mod01
 contains
  function m01_func01() result(m01_rst01)
   integer :: m01_rst01
   entry m01_f01_ent01() result(m01_rst01)
   m01_rst01 = 1
  end function
  subroutine m01_sub01()
   procedure(integer), pointer :: pprocp01
   type ty01
    procedure(integer), pointer, nopass :: pprocp01
   end type
   type (ty01) :: t01
   pprocp01 => m01_func01
   pprocp01 => m01_f01_ent01
   t01 = ty01(m01_func01)
   t01 = ty01(m01_f01_ent01)
   contains
    subroutine m01_s01_csub01()
     procedure(integer), pointer :: pprocp01
     type ty01
      procedure(integer), pointer, nopass :: pprocp01
     end type
     type (ty01) :: t01
     pprocp01 => m01_func01
     pprocp01 => m01_f01_ent01
     t01 = ty01(m01_func01)
     t01 = ty01(m01_f01_ent01)
    end subroutine
  end subroutine
end module

use mod01

procedure(integer), pointer :: pprocp01
type ty01
 procedure(integer), pointer, nopass :: pprocp01
end type
type (ty01) :: t01
pprocp01 => m01_func01
pprocp01 => m01_f01_ent01
t01 = ty01(m01_func01)
t01 = ty01(m01_f01_ent01)

print *,'pass'

contains
 subroutine csub01()
  procedure(integer), pointer :: pprocp01
  type ty01
   procedure(integer), pointer, nopass :: pprocp01
  end type
  type (ty01) :: t01
  pprocp01 => m01_func01
  pprocp01 => m01_f01_ent01
  t01 = ty01(m01_func01)
  t01 = ty01(m01_f01_ent01)
 end subroutine
end
