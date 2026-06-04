module mod01
 procedure(m01_f01_ent01), pointer :: pm01_f01_ent01p01
 procedure(m01_s01_ent01), pointer :: pm01_s01_ent01p01
 contains
  function m01func01() result(m01rst01)
   integer :: m01rst01
   entry m01_f01_ent01() result(m01rst01)
   procedure(m01_f01_ent01), pointer :: pm01_f01_ent01p
   procedure(m01_s01_ent01), pointer :: pm01_s01_ent01p
   pm01_f01_ent01p   => null()
   pm01_s01_ent01p   => null()
   pm01_f01_ent01p01 => null()
   pm01_s01_ent01p01 => null()
   m01rst01 = 1
   contains
    subroutine m01_f01_csub01()
     procedure(m01_f01_ent01), pointer :: pm01_f01_ent01p02
     procedure(m01_s01_ent01), pointer :: pm01_s01_ent01p02
     pm01_f01_ent01p   => null()
     pm01_s01_ent01p   => null()
     pm01_f01_ent01p01 => null()
     pm01_s01_ent01p01 => null()
     pm01_f01_ent01p02 => null()
     pm01_s01_ent01p02 => null()
    end subroutine
  end function
  subroutine m01sub01()
   entry m01_s01_ent01()
   procedure(m01_s01_ent01), pointer :: pm01_s01_ent01p
   procedure(m01_f01_ent01), pointer :: pm01_f01_ent01p
   pm01_s01_ent01p   => null()
   pm01_f01_ent01p   => null()
   pm01_f01_ent01p01 => null()
   pm01_s01_ent01p01 => null()
   contains
    subroutine m01_s01_csub01()
     procedure(m01_f01_ent01), pointer :: pm01_f01_ent01p02
     procedure(m01_s01_ent01), pointer :: pm01_s01_ent01p02
     pm01_f01_ent01p   => null()
     pm01_s01_ent01p   => null()
     pm01_f01_ent01p01 => null()
     pm01_s01_ent01p01 => null()
     pm01_f01_ent01p02 => null()
     pm01_s01_ent01p02 => null()
    end subroutine
  end subroutine
end module

use mod01

procedure(m01_f01_ent01), pointer :: pm01_f01_ent01p02
procedure(m01_s01_ent01), pointer :: pm01_s01_ent01p02

pm01_f01_ent01p01 => null()
pm01_s01_ent01p01 => null()
pm01_f01_ent01p02 => null()
pm01_s01_ent01p02 => null()

print *,'pass'

end

subroutine sub01()
 entry s01_ent01()
 procedure(s01_ent01), pointer :: ps01_ent01p01
 ps01_ent01p01 => null()
 contains
  subroutine s01_csub01()
   procedure(s01_ent01), pointer :: ps01_ent01p02
   ps01_ent01p01 => null()
   ps01_ent01p02 => null()
  end subroutine
end subroutine

function func01() result(rst01)
 integer :: rst01
 entry f01_ent01() result(rst01)
 procedure(f01_ent01), pointer :: pf01_ent01p01
 pf01_ent01p01 => null()
 rst01 = 1
 contains
  subroutine f01_csub01()
   procedure(f01_ent01), pointer :: pf01_ent01p02
   pf01_ent01p01 => null()
   pf01_ent01p02 => null()
  end subroutine
end function
