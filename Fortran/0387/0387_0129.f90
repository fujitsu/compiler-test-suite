module mod01
 contains
  function m1func01() result(m1rst01)
   procedure(m1func02), pointer :: m1rst01
   m1rst01 => m1func02
  end function
  function m1func02(m1arg02) result(m1rst02)
   procedure(m1func03) :: m1arg02
   integer             :: m1rst02
   m1rst02 = 1
  end function
  function m1func03() result(m1rst03)
   procedure(m1func04), pointer :: m1rst03
   m1rst03 => m1func04
  end function
  function m1func04(m1arg04) result(m1rst04)
   external :: m1arg04
   integer  :: m1rst04
   m1rst04 = 1
  end function
  subroutine m1sub01()
   procedure(m1func01), pointer :: pm1funcp01
   call csub01(pm1funcp01)
   contains
    subroutine csub01(carg01)
     procedure(m1func01), pointer :: carg01
    end subroutine
  end subroutine
end module

use mod01

procedure(m1func01), pointer :: pm1funcp01
procedure(m1func02), pointer :: pm1funcp02
procedure(m1func03), pointer :: pm1funcp03

pm1funcp01 => m1func01
pm1funcp02 => pm1funcp01()
pm1funcp03 => m1func03
if (pm1funcp02(pm1funcp03).ne.1) print *,'error'

print *,'pass'

end
