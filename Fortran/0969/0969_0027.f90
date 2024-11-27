module mod01
 interface generate_name01
  function m01ifunc01() result(m01irst01)
   integer :: m01irst01
  end function
 end interface
 type generate_name01
  integer :: ii01
 end type
end module

use mod01

print *,generate_name01()

end

function m01ifunc01() result(m01irst01)
 integer :: m01irst01
 m01irst01 = 101
end function
