module mod01
 procedure(m1func01) :: pfunc01
 contains
  function m1func01(m1arg01, m1arg02) result(m1rst01)
   character(2) :: m1arg01
   character(2) :: m1arg02
   character(4) :: m1rst01
   if (m1arg01.ne.m1arg02) m1arg01 = m1arg02
   m1rst01 = m1arg01
  end function
end module

use mod01

procedure(character(4)), pointer :: pprocp01

pprocp01 => pfunc01

print *,pprocp01("pa", "ss")

end

function pfunc01(m1arg01, m1arg02) result(m1rst01)
 character(2) :: m1arg01
 character(2) :: m1arg02
 character(4) :: m1rst01
 m1rst01 = m1arg01 // m1arg02
end function
