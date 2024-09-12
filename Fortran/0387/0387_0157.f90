module mod01
 procedure(m1func01) :: pfunc01
 contains
  function m1func01(m1arg01, m1arg02) result(m1rst01)
   integer :: m1arg01
   integer :: m1arg02
   integer :: m1rst01
   m1rst01 = m1arg01 + m1arg02
  end function
end module

use mod01

procedure(integer), pointer :: pprocp01

pprocp01 => pfunc01

if (pprocp01(4, 4).ne.16) print *,'not pass'

print *,'pass'

end

function pfunc01(m1arg01, m1arg02) result(m1rst01)
 integer :: m1arg01
 integer :: m1arg02
 integer :: m1rst01
 m1rst01 = m1arg01 * m1arg02
end function
