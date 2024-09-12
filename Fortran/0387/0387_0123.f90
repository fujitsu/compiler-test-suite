module mod01
 contains
  function m1func01(di01) result(m1rst01)
   integer :: m1rst01, di01
   entry m1ent01(di01) result(m1rst01)
   m1rst01 = di01
  end function
  subroutine m1sub01(i)
   type ty01
    procedure(m1ent01), pointer, nopass :: tp01
   end type
   type (ty01) :: tt01
   integer :: i
   tt01 = ty01(m1ent01)
   i = tt01%tp01(i)
  end subroutine
end module

use mod01

type ty01
 procedure(m1ent01), pointer, nopass :: tp01
end type
type (ty01) :: tt01

integer :: i
i = 1
tt01 = ty01(m1ent01)
i = tt01%tp01(i)

print *,'pass'

end
